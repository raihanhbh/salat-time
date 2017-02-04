<?php


class MosqueMapper extends Mapper
{
    public function getMosques() {

        //return array('name' => 'Baitul Mamur', 'location' => 'dhaka');


        $sql = "SELECT m.id, m.title, m.description, m.location, m.city, m.country, m.addedBy, m.updatedAt
            from mosques m ";
        $stmt = $this->db->query($sql);

        $results = [];
        while($row = $stmt->fetch()) {
            $results[] = $row;
        }
        return $results;
    }

    public function save($mosque) {
        $sql = "insert into mosques
            (title, description, location, city, country, addedBy, updatedAt) values
            (:title, :description, :location, :city, :country, :addedBy, :updatedAt)";

        $stmt = $this->db->prepare($sql);
        $result = $stmt->execute([
            "title" => $mosque['title'],
            "description" => $mosque['description'],
            "location" => $mosque['location'],
            "city" => $mosque['city'],
            "country" => $mosque['country'],
            "addedBy" => $mosque['addedBy'],
            "updatedAt" => 'now()',
        ]);

        if(!$result) {
            throw new Exception("could not save record");
        } else {
            return array('message'=>'Mosque saved successfully.');
        }
    }

    /*public function save(MosqueEntity $mosque) {
        $sql = "insert into mosques
            (title, description, location, city, country, addedBy, updatedAt) values
            (:title, :description, location, city, country, addedBy, updatedAt)";

        $stmt = $this->db->prepare($sql);
        $result = $stmt->execute([
            "title" => $mosque->getTitle(),
            "description" => $mosque->getDescription(),
            "component" => $mosque->getComponent(),
        ]);

        if(!$result) {
            throw new Exception("could not save record");
        }
    }*/
}

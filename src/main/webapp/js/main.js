/* JavaScript Kodları Buraya */

function onload() {
    $.get(
        "/FindAllPerson",
        {},
        function (data) {
            var personList = JSON.parse(JSON.stringify(data));
            for (var i = 0; i < personList.length; i++) {
                var person = personList[i];
                var thId = "<th scope='row'>" + person.id + "</th>";
                var tdAdi = "<td>" + person.name + "</td>";
                var tdSoyadi = "<td>" + person.surname + "</td>";
                var tdPhone = "<td>" + person.phone + "</td>";
                var personTr = "<tr>" + thId + tdAdi + tdSoyadi + tdPhone + "</tr>";
                $("#tableBody").append(personTr);
            }
            console.log(data);
        }
    );
}
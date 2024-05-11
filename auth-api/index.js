const express = require("express");
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.post("/auth", (req, res) => {
  console.log(req.body);
  const {
    key,
    randomValues,
    trc,
    prfl,
    newValues,
    secretValues,
    mathValues,
    rp,
    cool,
    ggt,
    bbc,
    aab,
    dd,
    daddy,
    paypalme,
    qnxwtf,
    suckdick,
    time,
    random,
  } = req.body;

  if (key !== "qnx") return res.status(401).send({ message: "Unauthorized" });

  const hasDuplicates = secretValues.some(
    (val, i) => secretValues.indexOf(val) !== i
  );
  const hasDuplicates2 = mathValues.some(
    (val, i) => mathValues.indexOf(val) !== i
  );
  const hasDuplicates3 = randomValues.some(
    (val, i) => randomValues.indexOf(val) !== i
  );

  if (hasDuplicates || hasDuplicates2 || hasDuplicates3) {
    return res.status(401).send("Authentication failed");
  }

  return res.status(200).send({
    state: "success",
    message: "Valid license",
    x: randomValues,
    y: newValues,
    z: secretValues,
    a: mathValues,
    b: rp,
    c: cool,
    ggt: ggt,
    hello_world: ((rp * cool) / ggt) * 100,
    prfl: (rp * cool) / prfl,
    trc: (ggt * cool) / trc,
    bbc: bbc,
    aab: aab,
    dd: dd,
    daddy: daddy,
    paypalme: paypalme,
    qnxwtf: qnxwtf,
    suckdick: suckdick,
    time: time,
    random: random,
  });
});

app.listen(3000, () => console.log("[API] -> Running"));

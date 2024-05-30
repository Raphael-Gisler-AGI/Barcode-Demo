import cds from "@sap/cds";

class consignmentReturnsService extends cds.ApplicationService {
  async init() {
    const { Items } = this.entities;

    this.on("READ", Items, async (req: cds.Request, next: any) => {
      const res = await next();
      if (!Array.isArray(res) || req.params.length !== 0) return res;

      for (let i = res.length - 1; i >= 0; i--) {
        if (res[i]["UECHA"] !== "000000") {
          res.splice(i);
        }
      }

      return res;
    });
    return super.init();
  }
}
module.exports = consignmentReturnsService;

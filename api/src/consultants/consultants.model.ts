export class Consultant {
    constructor(
        public id: number,
        public first_name: string,
        public last_name: string,
        public starts_after_month: number,
        public starts_after_years: number,
        public leaves_after_month: number,
        public leaves_after_years: number
    ) {}
}
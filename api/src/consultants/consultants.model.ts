export class Consultant {
    constructor(
        public id_consultant: number,
        public id_agency: number,
        public first_name_consultant: string,
        public last_name_consultant: string,
        public starts_after_month_consultant: number,
        public starts_after_year_consultant: number,
        public leaves_after_month_consultant: number,
        public leaves_after_year_consultant: number
    ) {}
}
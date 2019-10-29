---
to: <%=h.changeCase.snakeCase(name)%>/tslint.json
---

{
    "extends":"tslint:recommended",
    "rules": {
        "indent": [
            "warn",
            "tab",
            { "SwitchCase": 1 }
        ],
        "quotes": [
            "warn",
            "double"
        ],
        "semi": [
            "error",
            "always"
        ],
        "no-var": [
            "error"
        ],
        "no-console": [
            "off"
        ],
        "no-unused-vars": [
            "warn"
        ],
        "no-mixed-spaces-and-tabs": [
            "warn"
        ]
    }
}
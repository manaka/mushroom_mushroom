import axios from "axios";
import {DictType, MushroomType} from "../types";

const instance = axios.create({
    baseURL: 'http://localhost:3000/api/v1/',
});

type APIDictionariesType = {
    dictionaries: DictType
}

export type APISearchType = {
    mushrooms: Array<MushroomType>
}

export const dictionariesAPI = {
    getDict() {
        return instance.get<APIDictionariesType>('dictionaries')
            .then(res => res.data)
    }
}

export const searchAPI = {
    getResult(pageNumber= 1, filters = {}) {
        const queryString = Object.keys(filters).map(key => key + '=' + filters[key]).join('&');
        return instance.get<APISearchType>('search/?1=1&' + queryString)
            .then(res => res.data)
    }
}

import {Action, applyMiddleware, combineReducers, createStore} from "redux";
import thunkMiddleware, {ThunkAction} from 'redux-thunk'
import dictionariesReducer from "./dictionariesReducer";
import mushroomsReducer from "./mushroomsReducer";


let reducers = combineReducers({
    dictionaries: dictionariesReducer,
    mushrooms: mushroomsReducer
});


let store = createStore(reducers, applyMiddleware(thunkMiddleware));
export type RootState = ReturnType<typeof store.getState>

type RootReducerType = typeof reducers; // (globalstate: AppStateType) => AppStateType
export type AppStateType = ReturnType<RootReducerType>

export type AppDispatch = typeof store.dispatch
export type InferActionsTypes<T> = T extends { [keys: string]: (...args: any[]) => infer U } ? U : never
export type BaseThunkType<A extends Action, R = void> = ThunkAction<R, RootState, unknown, A>
// @ts-ignore
window._store = store

export default store
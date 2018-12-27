import {GET_USERS, ADD_USER, DELETE_USER, USERS_LOADING} from '../actions/types';

const initialState = {
    users: null,
    loading: false
};

module.exports = function (state = initialState, action) {
    switch(action.type) {
        case GET_USERS:
            return {
                ...state,
                users: action.payload,
                loading:false
            };
        case DELETE_USER:
            return {
                ...state,
                users: state.users.filter(user => user._id !== action.payload)
            };
        case ADD_USER:
            return {
                ...state,
                users: action.payload
            };
        case USERS_LOADING:
            return {
                ...state,
                loading: true
            };

        default:
            return state;

    }
};
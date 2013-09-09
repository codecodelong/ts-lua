

function do_send_response()
    ts.client_response.header['Rhost'] = ts.ctx['rhost']
    return 1
end


function do_remap()
    req_host = ts.client_request.header.Host

    if req_host == nil then
        return 0
    end

    ts.ctx['Rhost'] = string.reverse(req_host)

    return 1
end

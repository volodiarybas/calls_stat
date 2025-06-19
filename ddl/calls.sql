CREATE TABLE calls (
    id UUID PRIMARY KEY,
    call_time TIMESTAMP NOT NULL,
    duration_seconds INTEGER NOT NULL,
    agent_id UUID NOT NULL,
    customer_id UUID,
    direction VARCHAR(10) CHECK (direction IN ('inbound', 'outbound')),
    status VARCHAR(20) CHECK (status IN ('completed', 'missed', 'cancelled', 'failed')),
    call_type VARCHAR(50),
    notes TEXT,
    recording_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_calls_agent FOREIGN KEY (agent_id) REFERENCES agents(id),
    CONSTRAINT fk_calls_customer FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE INDEX idx_calls_agent_id ON calls(agent_id);
CREATE INDEX idx_calls_customer_id ON calls(customer_id);
CREATE INDEX idx_calls_call_time ON calls(call_time);
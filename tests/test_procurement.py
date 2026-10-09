
def test_procurement_amount_calculation():
    quantity = 10
    unit_price = 500
    assert quantity * unit_price == 5000


def test_purchase_order_id_is_not_empty():
    po_id = "PO001"
    assert po_id.strip() != ""

package z4;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final enum V extends W {
    public V() {
        super("VALUE", 1);
    }

    @Override // p190y4.h
    public final Object apply(Object obj) {
        return ((Map.Entry) obj).getValue();
    }
}

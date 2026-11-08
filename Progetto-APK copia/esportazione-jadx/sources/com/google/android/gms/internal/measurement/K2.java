package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class K2 extends AbstractC2567h {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f22951I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K2(F.i iVar) {
        super("internal.remoteConfig");
        this.f22951I = 0;
        this.f23144H.put("getValue", new V1(iVar));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h
    public final InterfaceC2603n a(p096m2.i iVar, List list) {
        r rVar = InterfaceC2603n.f23213s;
        switch (this.f22951I) {
            case 1:
            case 2:
                return this;
            case 3:
                return new C2561g(Double.valueOf(0.0d));
            default:
                return rVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K2() {
        super("internal.platform");
        this.f22951I = 4;
        this.f23144H.put("getVersion", new K2((Object) null));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K2(int i8) {
        super("silent");
        this.f22951I = i8;
        if (i8 != 2) {
        } else {
            super("unmonitored");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K2(Object obj) {
        super("getVersion");
        this.f22951I = 3;
    }
}

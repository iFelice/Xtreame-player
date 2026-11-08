package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Kt implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f14430b;

    public /* synthetic */ Kt(int i8, Boolean bool) {
        this.f14429a = i8;
        this.f14430b = bool;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        int i8 = this.f14429a;
        Boolean bool = this.f14430b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (bool != null) {
                    bundle.putBoolean("hw_accel", bool.booleanValue());
                }
                break;
            default:
                Bundle bundle2 = (Bundle) obj;
                if (bool == null) {
                    bundle2.putInt("lft", -1);
                } else if (!bool.booleanValue()) {
                    bundle2.putInt("lft", 0);
                } else {
                    bundle2.putInt("lft", 1);
                }
                break;
        }
    }
}

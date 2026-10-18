package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import p090l3.InterfaceC3067a;

/* JADX INFO: loaded from: classes.dex */
public final class T9 implements p105n3.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f16596a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f16597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC3067a f16598c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Map f16599d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Map f16600e;

    public T9(boolean z7, InterfaceC3067a interfaceC3067a, HashMap map, Map map2) {
        this.f16597b = z7;
        this.f16598c = interfaceC3067a;
        this.f16599d = map;
        this.f16600e = map2;
    }

    @Override // p105n3.a
    public final void a(boolean z7) {
        if (this.f16596a) {
            return;
        }
        InterfaceC3067a interfaceC3067a = this.f16598c;
        if (z7 && this.f16597b) {
            ((InterfaceC0869Ok) interfaceC3067a).q();
        }
        this.f16596a = true;
        String str = (String) this.f16600e.get("event_id");
        Boolean boolValueOf = Boolean.valueOf(z7);
        Map map = this.f16599d;
        map.put(str, boolValueOf);
        ((InterfaceC1984sa) interfaceC3067a).w("openIntentAsync", map);
    }

    @Override // p105n3.a
    public final void zzb(int i8) {
    }
}

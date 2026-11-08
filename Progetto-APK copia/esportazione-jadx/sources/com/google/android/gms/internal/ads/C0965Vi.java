package com.google.android.gms.internal.ads;

import android.content.Context;
import p039f.AbstractC2987b;
import p113o3.C3151i;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0965Vi implements InterfaceC2165vz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f17081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f17082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f17083d;

    public /* synthetic */ C0965Vi(Context context, p120p3.a aVar, Yv yv) {
        this.f17080a = 0;
        this.f17081b = context;
        this.f17082c = aVar;
        this.f17083d = yv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2165vz
    public final Object apply(Object obj) {
        int i8 = this.f17080a;
        Object obj2 = this.f17083d;
        Object obj3 = this.f17082c;
        Object obj4 = this.f17081b;
        switch (i8) {
            case 0:
                Ov ov = (Ov) obj;
                C3151i c3151i = new C3151i((Context) obj4);
                c3151i.f27961c = ov.f15221B;
                c3151i.f27964f = ov.f15222C.toString();
                c3151i.f27963e = ((p120p3.a) obj3).f28196G;
                c3151i.f27962d = ((Yv) obj2).f17679f;
                return c3151i;
            case 1:
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) obj4;
                if (((Ov) obj3).f15232M) {
                    interfaceC0715Ef.k0();
                }
                interfaceC0715Ef.N0();
                interfaceC0715Ef.onPause();
                return ((C0686Cg) obj2).G0();
            case 2:
                InterfaceC0715Ef interfaceC0715Ef2 = (InterfaceC0715Ef) obj4;
                if (((Ov) obj3).f15232M) {
                    interfaceC0715Ef2.k0();
                }
                interfaceC0715Ef2.N0();
                interfaceC0715Ef2.onPause();
                return ((C0836Mg) obj2).G0();
            default:
                InterfaceC0715Ef interfaceC0715Ef3 = (InterfaceC0715Ef) obj4;
                if (((Ov) obj3).f15232M) {
                    interfaceC0715Ef3.k0();
                }
                interfaceC0715Ef3.N0();
                interfaceC0715Ef3.onPause();
                return ((C0879Pg) obj2).G0();
        }
    }

    public /* synthetic */ C0965Vi(InterfaceC0715Ef interfaceC0715Ef, Ov ov, AbstractC2987b abstractC2987b, int i8) {
        this.f17080a = i8;
        this.f17081b = interfaceC0715Ef;
        this.f17082c = ov;
        this.f17083d = abstractC2987b;
    }
}

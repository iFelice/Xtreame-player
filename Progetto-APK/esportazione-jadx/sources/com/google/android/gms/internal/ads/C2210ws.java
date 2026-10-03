package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ws, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2210ws implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f21755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f21756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f21757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Yv f21758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewGroup f21759e;

    public C2210ws(InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC, C1936re c1936re, Context context, Yv yv, ViewGroup viewGroup) {
        this.f21755a = interfaceExecutorServiceC1504jC;
        this.f21756b = c1936re;
        this.f21757c = context;
        this.f21758d = yv;
        this.f21759e = viewGroup;
    }

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        View view = this.f21759e;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int iIndexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", iIndexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        Q7.a(this.f21757c);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ra)).booleanValue()) {
            final int i8 = 0;
            return ((IB) this.f21756b).b(new Callable(this) { // from class: com.google.android.gms.internal.ads.vs

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ C2210ws f21604b;

                {
                    this.f21604b = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    int i9 = i8;
                    int i10 = 0;
                    C2210ws c2210ws = this.f21604b;
                    switch (i9) {
                        case 0:
                            return new C2262xs(c2210ws.f21757c, c2210ws.f21758d.f17678e, c2210ws.a(), i10);
                        default:
                            return new C2262xs(c2210ws.f21757c, c2210ws.f21758d.f17678e, c2210ws.a(), i10);
                    }
                }
            });
        }
        final int i9 = 1;
        return ((IB) this.f21755a).b(new Callable(this) { // from class: com.google.android.gms.internal.ads.vs

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ C2210ws f21604b;

            {
                this.f21604b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i10 = i9;
                int i11 = 0;
                C2210ws c2210ws = this.f21604b;
                switch (i10) {
                    case 0:
                        return new C2262xs(c2210ws.f21757c, c2210ws.f21758d.f17678e, c2210ws.a(), i11);
                    default:
                        return new C2262xs(c2210ws.f21757c, c2210ws.f21758d.f17678e, c2210ws.a(), i11);
                }
            }
        });
    }
}

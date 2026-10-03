package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class DA extends AbstractC1297fB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f12781H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AbstractList f12782I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DA(AbstractList abstractList, ListIterator listIterator, int i8) {
        super(listIterator);
        this.f12781H = i8;
        this.f12782I = abstractList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1245eB
    public final Object a(Object obj) {
        int i8 = this.f12781H;
        AbstractList abstractList = this.f12782I;
        switch (i8) {
            case 0:
                return ((InterfaceC2165vz) ((EA) abstractList).f12947I).apply(obj);
            default:
                return ((InterfaceC2165vz) ((FA) abstractList).f13327I).apply(obj);
        }
    }
}

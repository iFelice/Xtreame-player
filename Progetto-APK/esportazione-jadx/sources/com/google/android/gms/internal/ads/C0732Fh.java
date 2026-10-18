package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0732Fh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC2073uA f13388a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f13389b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ByteBuffer[] f13390c = new ByteBuffer[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f13391d;

    public C0732Fh(PA pa) {
        this.f13388a = pa;
        C0936Th c0936Th = C0936Th.f16698e;
        this.f13391d = false;
    }

    public final C0936Th a(C0936Th c0936Th) {
        if (c0936Th.equals(C0936Th.f16698e)) {
            throw new C1267ei(c0936Th);
        }
        int i8 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = this.f13388a;
            if (i8 >= abstractC2073uA.size()) {
                return c0936Th;
            }
            InterfaceC2044ti interfaceC2044ti = (InterfaceC2044ti) abstractC2073uA.get(i8);
            C0936Th c0936ThA = interfaceC2044ti.a(c0936Th);
            if (interfaceC2044ti.zzg()) {
                p113o3.r.M(!c0936ThA.equals(C0936Th.f16698e));
                c0936Th = c0936ThA;
            }
            i8++;
        }
    }

    public final void b() {
        ArrayList arrayList = this.f13389b;
        arrayList.clear();
        this.f13391d = false;
        int i8 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = this.f13388a;
            if (i8 >= abstractC2073uA.size()) {
                break;
            }
            InterfaceC2044ti interfaceC2044ti = (InterfaceC2044ti) abstractC2073uA.get(i8);
            interfaceC2044ti.zzc();
            if (interfaceC2044ti.zzg()) {
                arrayList.add(interfaceC2044ti);
            }
            i8++;
        }
        this.f13390c = new ByteBuffer[arrayList.size()];
        for (int i9 = 0; i9 <= f(); i9++) {
            this.f13390c[i9] = ((InterfaceC2044ti) arrayList.get(i9)).zzb();
        }
    }

    public final void c() {
        int i8 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = this.f13388a;
            if (i8 >= abstractC2073uA.size()) {
                this.f13390c = new ByteBuffer[0];
                C0936Th c0936Th = C0936Th.f16698e;
                this.f13391d = false;
                return;
            } else {
                InterfaceC2044ti interfaceC2044ti = (InterfaceC2044ti) abstractC2073uA.get(i8);
                interfaceC2044ti.zzc();
                interfaceC2044ti.zzf();
                i8++;
            }
        }
    }

    public final boolean d() {
        return this.f13391d && ((InterfaceC2044ti) this.f13389b.get(f())).zzh() && !this.f13390c[f()].hasRemaining();
    }

    public final boolean e() {
        return !this.f13389b.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0732Fh)) {
            return false;
        }
        C0732Fh c0732Fh = (C0732Fh) obj;
        AbstractC2073uA abstractC2073uA = this.f13388a;
        if (abstractC2073uA.size() != c0732Fh.f13388a.size()) {
            return false;
        }
        for (int i8 = 0; i8 < abstractC2073uA.size(); i8++) {
            if (abstractC2073uA.get(i8) != c0732Fh.f13388a.get(i8)) {
                return false;
            }
        }
        return true;
    }

    public final int f() {
        return this.f13390c.length - 1;
    }

    public final void g(ByteBuffer byteBuffer) {
        boolean z7;
        do {
            z7 = false;
            for (int i8 = 0; i8 <= f(); i8++) {
                if (!this.f13390c[i8].hasRemaining()) {
                    ArrayList arrayList = this.f13389b;
                    InterfaceC2044ti interfaceC2044ti = (InterfaceC2044ti) arrayList.get(i8);
                    if (!interfaceC2044ti.zzh()) {
                        ByteBuffer byteBuffer2 = i8 > 0 ? this.f13390c[i8 - 1] : byteBuffer.hasRemaining() ? byteBuffer : InterfaceC2044ti.f21093a;
                        long jRemaining = byteBuffer2.remaining();
                        interfaceC2044ti.b(byteBuffer2);
                        this.f13390c[i8] = interfaceC2044ti.zzb();
                        boolean z8 = true;
                        if (jRemaining - ((long) byteBuffer2.remaining()) <= 0 && !this.f13390c[i8].hasRemaining()) {
                            z8 = false;
                        }
                        z7 |= z8;
                    } else if (!this.f13390c[i8].hasRemaining() && i8 < f()) {
                        ((InterfaceC2044ti) arrayList.get(i8 + 1)).zzd();
                    }
                }
            }
        } while (z7);
    }

    public final int hashCode() {
        return this.f13388a.hashCode();
    }
}

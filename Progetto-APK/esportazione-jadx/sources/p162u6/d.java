package p162u6;

import Z5.C0456m;
import com.google.protobuf.U2;
import java.util.RandomAccess;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends e implements RandomAccess {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final e f30530G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f30531H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f30532I;

    public d(e eVar, int i8, int i9) {
        q0.h(eVar, "list");
        this.f30530G = eVar;
        this.f30531H = i8;
        C0456m.c(i8, i9, eVar.b());
        this.f30532I = i9 - i8;
    }

    @Override // p162u6.b
    public final int b() {
        return this.f30532I;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        int i9 = this.f30532I;
        if (i8 < 0 || i8 >= i9) {
            throw new IndexOutOfBoundsException(U2.j("index: ", i8, ", size: ", i9));
        }
        return this.f30530G.get(this.f30531H + i8);
    }
}

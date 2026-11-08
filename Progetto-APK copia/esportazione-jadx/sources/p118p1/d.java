package p118p1;

import Q3.b;
import W0.y;
import Z3.C;
import androidx.media3.extractor.FlacStreamMetadata;
import java.util.Arrays;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p096m2.c;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class d extends j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public FlacStreamMetadata f28151n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public c f28152o;

    @Override // p118p1.j
    public final long b(E e8) {
        byte[] bArr = e8.f28035a;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i8 = (bArr[2] & 255) >> 4;
        if (i8 == 6 || i8 == 7) {
            e8.M(4);
            e8.G();
        }
        int iS = b.s(i8, e8);
        e8.L(0);
        return iS;
    }

    @Override // p118p1.j
    public final boolean c(E e8, long j8, c cVar) {
        byte[] bArr = e8.f28035a;
        FlacStreamMetadata flacStreamMetadata = this.f28151n;
        if (flacStreamMetadata == null) {
            FlacStreamMetadata flacStreamMetadata2 = new FlacStreamMetadata(bArr, 17);
            this.f28151n = flacStreamMetadata2;
            C3135s c3135sA = flacStreamMetadata2.getFormat(Arrays.copyOfRange(bArr, 9, e8.f28037c), null).a();
            c3135sA.f26995m = O.p("audio/ogg");
            cVar.f27210H = c3135sA.a();
            return true;
        }
        byte b8 = bArr[0];
        if ((b8 & 127) != 3) {
            if (b8 != -1) {
                return true;
            }
            c cVar2 = this.f28152o;
            if (cVar2 != null) {
                cVar2.f28149I = j8;
                cVar.f27211I = cVar2;
            }
            ((C3136t) cVar.f27210H).getClass();
            return false;
        }
        y yVarI = C.i(e8);
        FlacStreamMetadata flacStreamMetadataCopyWithSeekTable = flacStreamMetadata.copyWithSeekTable(yVarI);
        this.f28151n = flacStreamMetadataCopyWithSeekTable;
        c cVar3 = new c();
        cVar3.f28147G = flacStreamMetadataCopyWithSeekTable;
        cVar3.f28148H = yVarI;
        cVar3.f28149I = -1L;
        cVar3.f28150J = -1L;
        this.f28152o = cVar3;
        return true;
    }

    @Override // p118p1.j
    public final void d(boolean z7) {
        super.d(z7);
        if (z7) {
            this.f28151n = null;
            this.f28152o = null;
        }
    }
}

package A4;

import org.videolan.libvlc.interfaces.IMediaList;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final char[] f651d;

    public b(a aVar) {
        super(aVar, (Character) null);
        this.f651d = new char[IMediaList.Event.ItemAdded];
        char[] cArr = aVar.f644b;
        k.p(cArr.length == 16);
        for (int i8 = 0; i8 < 256; i8++) {
            char[] cArr2 = this.f651d;
            cArr2[i8] = cArr[i8 >>> 4];
            cArr2[i8 | 256] = cArr[i8 & 15];
        }
    }

    @Override // A4.d
    public final void c(StringBuilder sb, byte[] bArr, int i8) {
        k.u(0, i8, bArr.length);
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = bArr[i9] & 255;
            char[] cArr = this.f651d;
            sb.append(cArr[i10]);
            sb.append(cArr[i10 | 256]);
        }
    }
}

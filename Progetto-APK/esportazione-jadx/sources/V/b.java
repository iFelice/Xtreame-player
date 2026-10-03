package V;

import android.util.Base64OutputStream;
import android.util.SparseArray;
import android.widget.EditText;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1804p0;
import com.google.android.gms.internal.ads.C1805p1;
import com.google.android.gms.internal.ads.C2065u2;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.InterfaceC1857q1;
import com.google.android.gms.internal.ads.R5;
import com.google.android.gms.internal.ads.S5;
import com.google.android.gms.internal.ads.W5;
import com.google.android.gms.internal.ads.Zo;
import java.io.IOException;
import java.lang.reflect.Array;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.HttpUrl;
import p094m0.C3136t;
import p117p0.AbstractC3164b;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p132r.l;

/* JADX INFO: loaded from: classes.dex */
public final class b implements p111o1.d, InterfaceC1857q1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f6995d;

    public b(int i8) {
        this.f6992a = i8;
        if (i8 != 7) {
            this.f6993b = 0;
            this.f6994c = 100;
        } else {
            this.f6995d = new b[256];
            this.f6993b = 0;
            this.f6994c = 0;
        }
    }

    @Override // p111o1.d
    public final int a() {
        return this.f6993b;
    }

    @Override // p111o1.d
    public final int b() {
        return this.f6994c;
    }

    @Override // p111o1.d
    public final int c() {
        int i8 = this.f6993b;
        return i8 == -1 ? ((E) this.f6995d).D() : i8;
    }

    public final void d() {
        int i8;
        int i9 = this.f6993b;
        if (i9 != 2) {
            if (i9 != 3 && i9 != 1) {
                this.f6995d = null;
                return;
            }
            l lVar = (l) this.f6995d;
            if (lVar == null || lVar.c() != Integer.MAX_VALUE) {
                this.f6995d = new l(com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
                return;
            }
            return;
        }
        if (this.f6994c <= 0) {
            throw new IllegalArgumentException();
        }
        l lVar2 = (l) this.f6995d;
        if (lVar2 != null) {
            synchronized (lVar2.f29678c) {
                i8 = lVar2.f29676a;
            }
            if (i8 == this.f6994c) {
                return;
            }
        }
        this.f6995d = new l(this.f6994c);
    }

    public final void e() {
        Object obj = this.f6995d;
        if (((l) obj) != null) {
            ((l) obj).h(-1);
        }
    }

    public final byte f(int i8, int i9) {
        return ((byte[][]) this.f6995d)[i9][i8];
    }

    public final void g(int i8, int i9, int i10) {
        ((byte[][]) this.f6995d)[i9][i8] = (byte) i10;
    }

    public final void h(boolean z7, int i8, int i9) {
        ((byte[][]) this.f6995d)[i9][i8] = z7 ? (byte) 1 : (byte) 0;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    public final String i(ArrayList arrayList, ArrayList arrayList2) {
        Collections.sort(arrayList2, new C2065u2(4, 0));
        HashSet hashSet = new HashSet();
        loop0: for (int i8 = 0; i8 < arrayList2.size(); i8++) {
            String[] strArrSplit = Normalizer.normalize((CharSequence) arrayList.get(((R5) arrayList2.get(i8)).f16211e), Normalizer.Form.NFKC).toLowerCase(Locale.US).split("\n");
            if (strArrSplit.length != 0) {
                for (String str : strArrSplit) {
                    if (str.contains("'")) {
                        StringBuilder sb = new StringBuilder(str);
                        int i9 = 1;
                        boolean z7 = false;
                        while (true) {
                            int i10 = i9 + 2;
                            if (i10 > sb.length()) {
                                break;
                            }
                            if (sb.charAt(i9) == '\'') {
                                if (sb.charAt(i9 - 1) != ' ') {
                                    int i11 = i9 + 1;
                                    if ((sb.charAt(i11) == 's' || sb.charAt(i11) == 'S') && (i10 == sb.length() || sb.charAt(i10) == ' ')) {
                                        sb.insert(i9, ' ');
                                        i9 = i10;
                                    } else {
                                        sb.setCharAt(i9, ' ');
                                    }
                                } else {
                                    sb.setCharAt(i9, ' ');
                                }
                                z7 = true;
                            }
                            i9++;
                        }
                        String string = z7 ? sb.toString() : null;
                        if (string != null) {
                            str = string;
                        }
                    }
                    String[] strArrQ = a7.b.q(str, true);
                    if (strArrQ.length >= this.f6994c) {
                        for (int i12 = 0; i12 < strArrQ.length; i12++) {
                            String strConcat = HttpUrl.FRAGMENT_ENCODE_SET;
                            for (int i13 = 0; i13 < this.f6994c; i13++) {
                                int i14 = i12 + i13;
                                if (i14 >= strArrQ.length) {
                                    break;
                                }
                                if (i13 > 0) {
                                    strConcat = strConcat.concat(" ");
                                }
                                strConcat = strConcat.concat(String.valueOf(strArrQ[i14]));
                            }
                            hashSet.add(strConcat);
                            if (hashSet.size() >= this.f6993b) {
                                break loop0;
                            }
                        }
                        if (hashSet.size() >= this.f6993b) {
                            break loop0;
                        }
                    }
                }
            }
        }
        C2218x c2218x = new C2218x(11);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            try {
                ((Base64OutputStream) c2218x.f21780I).write(((S5) this.f6995d).b((String) it.next()));
            } catch (IOException e8) {
                p120p3.h.e("Error while writing hash to byteStream", e8);
            }
        }
        return c2218x.toString();
    }

    public final String toString() {
        switch (this.f6992a) {
            case 6:
                StringBuilder sb = new StringBuilder((this.f6993b * 2 * this.f6994c) + 2);
                for (int i8 = 0; i8 < this.f6994c; i8++) {
                    byte[] bArr = ((byte[][]) this.f6995d)[i8];
                    for (int i9 = 0; i9 < this.f6993b; i9++) {
                        byte b8 = bArr[i9];
                        if (b8 == 0) {
                            sb.append(" 0");
                        } else if (b8 != 1) {
                            sb.append("  ");
                        } else {
                            sb.append(" 1");
                        }
                    }
                    sb.append('\n');
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zza() {
        return this.f6993b;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zzb() {
        return this.f6994c;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1857q1
    public final int zzc() {
        int i8 = this.f6993b;
        return i8 == -1 ? ((C1534jr) this.f6995d).z() : i8;
    }

    public b(int i8, int i9, int i10) {
        this.f6992a = 5;
        this.f6993b = i8;
        i9 = (i9 > 64 || i9 < 0) ? 64 : i9;
        if (i10 <= 0) {
            this.f6994c = 1;
        } else {
            this.f6994c = i10;
        }
        this.f6995d = new W5(i9);
    }

    public b(int i8, int i9, int i10, int i11) {
        this.f6992a = i10;
        if (i10 != 7) {
            this.f6995d = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i9, i8);
            this.f6993b = i8;
            this.f6994c = i9;
        } else {
            this.f6995d = null;
            this.f6993b = i8;
            int i12 = i9 & 7;
            this.f6994c = i12 == 0 ? 8 : i12;
        }
    }

    public b(int i8, int i9, SparseArray sparseArray) {
        this.f6992a = 4;
        this.f6993b = i8;
        this.f6994c = i9;
        this.f6995d = sparseArray;
    }

    public b(C1805p1 c1805p1, C1804p0 c1804p0) {
        this.f6992a = 3;
        C1534jr c1534jr = c1805p1.f20397c;
        this.f6995d = c1534jr;
        c1534jr.j(12);
        int iZ = ((C1534jr) this.f6995d).z();
        if ("audio/raw".equals(c1804p0.f20383m)) {
            int iO = Et.o(c1804p0.f20364C) * c1804p0.f20362A;
            if (iZ == 0 || iZ % iO != 0) {
                Zo.f("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iO + ", stsz sample size: " + iZ);
                iZ = iO;
            }
        }
        this.f6993b = iZ == 0 ? -1 : iZ;
        this.f6994c = ((C1534jr) this.f6995d).z();
    }

    public b(EditText editText) {
        this.f6992a = 0;
        this.f6993b = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f6994c = 0;
        AbstractC3164b.g(editText, "editText cannot be null");
        this.f6995d = new a(editText);
    }

    public b(p125q0.d dVar, C3136t c3136t) {
        this.f6992a = 2;
        E e8 = dVar.f29446c;
        this.f6995d = e8;
        e8.L(12);
        int iD = ((E) this.f6995d).D();
        if ("audio/raw".equals(c3136t.f27041o)) {
            int iS = M.s(c3136t.f27018I) * c3136t.f27016G;
            if (iD == 0 || iD % iS != 0) {
                x.f("BoxParsers", "Audio sample size mismatch. stsd sample size: " + iS + ", stsz sample size: " + iD);
                iD = iS;
            }
        }
        this.f6993b = iD == 0 ? -1 : iD;
        this.f6994c = ((E) this.f6995d).D();
    }
}

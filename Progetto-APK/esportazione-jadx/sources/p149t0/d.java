package p149t0;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import com.google.android.gms.internal.ads.AbstractC1631lk;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.C0675Bk;
import com.google.android.gms.internal.ads.C0981Wk;
import com.google.android.gms.internal.ads.C1063ak;
import com.google.android.gms.internal.ads.C1204dL;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.C1969sA;
import com.google.android.gms.internal.ads.C2254xk;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1255eL;
import com.google.android.gms.internal.ads.InterfaceC1581km;
import com.google.android.gms.internal.ads.S1;
import com.google.android.gms.internal.ads.Y1;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import p113o3.r;

/* JADX INFO: loaded from: classes.dex */
public final class d implements InterfaceC1581km, InterfaceC1119bo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30166G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f30167H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f30168I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f30169J;

    /* JADX WARN: Code duplicated, block: B:25:0x0104  */
    @Override // com.google.android.gms.internal.ads.InterfaceC1581km
    /* JADX INFO: renamed from: zza */
    public final void mo4zza(Object obj) {
        C1969sA c1969sA;
        switch (this.f30166G) {
            case 3:
                Y1 y7 = (Y1) this.f30169J;
                long j8 = this.f30168I;
                int i8 = this.f30167H;
                S1 s7 = (S1) obj;
                r.x(y7.f17565h);
                AbstractC2073uA abstractC2073uA = s7.f16394a;
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>(abstractC2073uA.size());
                int i9 = 0;
                C1969sA c1969sAListIterator = abstractC2073uA.listIterator(0);
                while (c1969sAListIterator.hasNext()) {
                    C1063ak c1063ak = (C1063ak) c1969sAListIterator.next();
                    c1063ak.getClass();
                    Bundle bundle = new Bundle();
                    CharSequence charSequence = c1063ak.f17939a;
                    if (charSequence != null) {
                        bundle.putCharSequence(C1063ak.f17928p, charSequence);
                        if (charSequence instanceof Spanned) {
                            Spanned spanned = (Spanned) charSequence;
                            String str = AbstractC1631lk.f19833a;
                            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                            C0675Bk[] c0675BkArr = (C0675Bk[]) spanned.getSpans(i9, spanned.length(), C0675Bk.class);
                            int length = c0675BkArr.length;
                            while (i9 < length) {
                                C0675Bk c0675Bk = c0675BkArr[i9];
                                c0675Bk.getClass();
                                Bundle bundle2 = new Bundle();
                                bundle2.putString(C0675Bk.f12484c, c0675Bk.f12486a);
                                bundle2.putInt(C0675Bk.f12485d, c0675Bk.f12487b);
                                arrayList2.add(AbstractC1631lk.a(spanned, c0675Bk, 1, bundle2));
                                i9++;
                                c1969sAListIterator = c1969sAListIterator;
                                c0675BkArr = c0675BkArr;
                            }
                            c1969sA = c1969sAListIterator;
                            C0981Wk[] c0981WkArr = (C0981Wk[]) spanned.getSpans(0, spanned.length(), C0981Wk.class);
                            int length2 = c0981WkArr.length;
                            int i10 = 0;
                            while (i10 < length2) {
                                C0981Wk c0981Wk = c0981WkArr[i10];
                                c0981Wk.getClass();
                                Bundle bundle3 = new Bundle();
                                bundle3.putInt(C0981Wk.f17306d, c0981Wk.f17309a);
                                bundle3.putInt(C0981Wk.f17307e, c0981Wk.f17310b);
                                bundle3.putInt(C0981Wk.f17308f, c0981Wk.f17311c);
                                arrayList2.add(AbstractC1631lk.a(spanned, c0981Wk, 2, bundle3));
                                i10++;
                                c0981WkArr = c0981WkArr;
                            }
                            for (C2254xk c2254xk : (C2254xk[]) spanned.getSpans(0, spanned.length(), C2254xk.class)) {
                                arrayList2.add(AbstractC1631lk.a(spanned, c2254xk, 3, null));
                            }
                            if (!arrayList2.isEmpty()) {
                                bundle.putParcelableArrayList(C1063ak.f17929q, arrayList2);
                            }
                        } else {
                            c1969sA = c1969sAListIterator;
                        }
                    } else {
                        c1969sA = c1969sAListIterator;
                    }
                    bundle.putSerializable(C1063ak.f17930r, c1063ak.f17940b);
                    bundle.putSerializable(C1063ak.f17931s, c1063ak.f17941c);
                    bundle.putFloat(C1063ak.f17933u, c1063ak.f17943e);
                    bundle.putInt(C1063ak.f17934v, c1063ak.f17944f);
                    bundle.putInt(C1063ak.f17935w, c1063ak.f17945g);
                    bundle.putFloat(C1063ak.f17936x, c1063ak.f17946h);
                    bundle.putInt(C1063ak.f17937y, c1063ak.f17947i);
                    bundle.putInt(C1063ak.f17938z, c1063ak.f17950l);
                    bundle.putFloat(C1063ak.f17921A, c1063ak.f17951m);
                    bundle.putFloat(C1063ak.f17922B, c1063ak.f17948j);
                    bundle.putFloat(C1063ak.f17923C, c1063ak.f17949k);
                    bundle.putBoolean(C1063ak.f17925E, false);
                    bundle.putInt(C1063ak.f17924D, -16777216);
                    bundle.putInt(C1063ak.f17926F, c1063ak.f17952n);
                    bundle.putFloat(C1063ak.f17927G, c1063ak.f17953o);
                    Bitmap bitmap = c1063ak.f17942d;
                    if (bitmap != null) {
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        r.M(bitmap.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream));
                        bundle.putByteArray(C1063ak.f17932t, byteArrayOutputStream.toByteArray());
                    }
                    arrayList.add(bundle);
                    c1969sAListIterator = c1969sA;
                    i9 = 0;
                }
                Bundle bundle4 = new Bundle();
                bundle4.putParcelableArrayList("c", arrayList);
                bundle4.putLong("d", s7.f16396c);
                Parcel parcelObtain = Parcel.obtain();
                parcelObtain.writeBundle(bundle4);
                byte[] bArrMarshall = parcelObtain.marshall();
                parcelObtain.recycle();
                int length3 = bArrMarshall.length;
                C1534jr c1534jr = y7.f17560c;
                c1534jr.h(length3, bArrMarshall);
                y7.f17558a.f(length3, c1534jr);
                long j9 = s7.f16395b;
                if (j9 == -9223372036854775807L) {
                    r.M(y7.f17565h.f20388r == Long.MAX_VALUE);
                } else {
                    long j10 = y7.f17565h.f20388r;
                    j8 = j10 == Long.MAX_VALUE ? j8 + j9 : j9 + j10;
                }
                y7.f17558a.b(j8, i8, length3, 0, null);
                break;
            default:
                ((InterfaceC1255eL) obj).zzh(this.f30167H);
                break;
        }
    }

    public /* synthetic */ d(int i8, long j8, C1204dL c1204dL) {
        this.f30166G = 4;
        this.f30169J = c1204dL;
        this.f30167H = i8;
        this.f30168I = j8;
    }

    public /* synthetic */ d(Y1 y7, long j8, int i8) {
        this.f30166G = 3;
        this.f30169J = y7;
        this.f30168I = j8;
        this.f30167H = i8;
    }
}

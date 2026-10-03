package p172w1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.HttpUrl;
import p110o0.a;
import p110o0.b;
import p117p0.M;
import p126q1.d;

/* JADX INFO: loaded from: classes.dex */
public final class h implements d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final c f30976G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long[] f30977H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Map f30978I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Map f30979J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Map f30980K;

    public h(c cVar, HashMap map, HashMap map2, HashMap map3) {
        this.f30976G = cVar;
        this.f30979J = map2;
        this.f30980K = map3;
        this.f30978I = Collections.unmodifiableMap(map);
        TreeSet treeSet = new TreeSet();
        int i8 = 0;
        cVar.d(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i8] = ((Long) it.next()).longValue();
            i8++;
        }
        this.f30977H = jArr;
    }

    @Override // p126q1.d
    public final int a(long j8) {
        long[] jArr = this.f30977H;
        int iA = M.a(jArr, j8, false);
        if (iA < jArr.length) {
            return iA;
        }
        return -1;
    }

    @Override // p126q1.d
    public final long b(int i8) {
        return this.f30977H[i8];
    }

    @Override // p126q1.d
    public final List c(long j8) {
        c cVar = this.f30976G;
        cVar.getClass();
        ArrayList<Pair> arrayList = new ArrayList();
        cVar.g(j8, cVar.f30927h, arrayList);
        TreeMap treeMap = new TreeMap();
        cVar.i(j8, false, cVar.f30927h, treeMap);
        Map map = this.f30978I;
        Map map2 = this.f30979J;
        cVar.h(j8, map, map2, cVar.f30927h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = (String) this.f30980K.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                f fVar = (f) map2.get(pair.first);
                fVar.getClass();
                arrayList2.add(new b(null, null, null, bitmapDecodeByteArray, fVar.f30947c, 0, fVar.f30949e, fVar.f30946b, 0, Integer.MIN_VALUE, -3.4028235E38f, fVar.f30950f, fVar.f30951g, false, -16777216, fVar.f30954j, 0.0f, 0));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            f fVar2 = (f) map2.get(entry.getKey());
            fVar2.getClass();
            a aVar = (a) entry.getValue();
            CharSequence charSequence = aVar.f27597a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (a aVar2 : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar2), spannableStringBuilder.getSpanEnd(aVar2), (CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
            }
            for (int i8 = 0; i8 < spannableStringBuilder.length(); i8++) {
                if (spannableStringBuilder.charAt(i8) == ' ') {
                    int i9 = i8 + 1;
                    int i10 = i9;
                    while (i10 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i10) == ' ') {
                        i10++;
                    }
                    int i11 = i10 - i9;
                    if (i11 > 0) {
                        spannableStringBuilder.delete(i8, i11 + i8);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i12 = 0; i12 < spannableStringBuilder.length() - 1; i12++) {
                if (spannableStringBuilder.charAt(i12) == '\n') {
                    int i13 = i12 + 1;
                    if (spannableStringBuilder.charAt(i13) == ' ') {
                        spannableStringBuilder.delete(i13, i12 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
                if (spannableStringBuilder.charAt(i14) == ' ') {
                    int i15 = i14 + 1;
                    if (spannableStringBuilder.charAt(i15) == '\n') {
                        spannableStringBuilder.delete(i14, i15);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            aVar.f27601e = fVar2.f30947c;
            aVar.f27602f = fVar2.f30948d;
            aVar.f27603g = fVar2.f30949e;
            aVar.f27604h = fVar2.f30946b;
            aVar.f27608l = fVar2.f30950f;
            aVar.f27607k = fVar2.f30953i;
            aVar.f27606j = fVar2.f30952h;
            aVar.f27612p = fVar2.f30954j;
            arrayList2.add(aVar.a());
        }
        return arrayList2;
    }

    @Override // p126q1.d
    public final int d() {
        return this.f30977H.length;
    }
}

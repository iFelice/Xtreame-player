package p162u6;

import S3.e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.NoSuchElementException;
import okhttp3.HttpUrl;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j extends e {
    public static void K(int i8, int i9, int i10, byte[] bArr, byte[] bArr2) {
        q0.h(bArr, "<this>");
        q0.h(bArr2, "destination");
        System.arraycopy(bArr, i9, bArr2, i8, i10 - i9);
    }

    public static void L(int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        q0.h(iArr, "<this>");
        q0.h(iArr2, "destination");
        System.arraycopy(iArr, i9, iArr2, i8, i10 - i9);
    }

    public static void M(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        q0.h(objArr, "<this>");
        q0.h(objArr2, "destination");
        System.arraycopy(objArr, i9, objArr2, i8, i10 - i9);
    }

    public static /* synthetic */ void N(Object[] objArr, Object[] objArr2, int i8, int i9, int i10) {
        if ((i10 & 4) != 0) {
            i8 = 0;
        }
        M(objArr, 0, objArr2, i8, i9);
    }

    public static Object[] O(int i8, int i9, Object[] objArr) {
        q0.h(objArr, "<this>");
        e.b(i9, objArr.length);
        Object[] objArrCopyOfRange = Arrays.copyOfRange(objArr, i8, i9);
        q0.g(objArrCopyOfRange, "copyOfRange(...)");
        return objArrCopyOfRange;
    }

    public static void P(Object[] objArr, int i8, int i9) {
        q0.h(objArr, "<this>");
        Arrays.fill(objArr, i8, i9, (Object) null);
    }

    public static ArrayList Q(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static String R(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
        int i8 = 0;
        for (Object obj : objArr) {
            i8++;
            if (i8 > 1) {
                sb.append((CharSequence) ", ");
            }
            k.e(sb, obj, null);
        }
        sb.append((CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
        return sb.toString();
    }

    public static char S(char[] cArr) {
        q0.h(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }
}

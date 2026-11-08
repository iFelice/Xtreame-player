package p142s1;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f30019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f30020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f30021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f30022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f30023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f30024f;

    public /* synthetic */ b(int i8, int i9, int i10, int i11, int i12, int i13) {
        this.f30019a = i8;
        this.f30020b = i9;
        this.f30021c = i10;
        this.f30022d = i11;
        this.f30023e = i12;
        this.f30024f = i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0033  */
    public static b a(String str) {
        H1.d(str.startsWith("Format:"));
        String[] strArrSplit = TextUtils.split(str.substring(7), ",");
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < strArrSplit.length; i13++) {
            String strH0 = k.h0(strArrSplit[i13].trim());
            strH0.getClass();
            switch (strH0) {
                case "end":
                    i10 = i13;
                    break;
                case "text":
                    i12 = i13;
                    break;
                case "layer":
                    i8 = i13;
                    break;
                case "start":
                    i9 = i13;
                    break;
                case "style":
                    i11 = i13;
                    break;
            }
        }
        if (i9 == -1 || i10 == -1 || i12 == -1) {
            return null;
        }
        return new b(i8, i9, i10, i11, i12, strArrSplit.length);
    }
}

package p176w5;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f31100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f31102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f31103d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f31104e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f31105f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f31106g;

    public d(byte[] bArr, String str, ArrayList arrayList, String str2) {
        this(bArr, str, arrayList, str2, -1, -1);
    }

    public d(byte[] bArr, String str, ArrayList arrayList, String str2, int i8, int i9) {
        this.f31100a = bArr;
        if (bArr != null) {
            int length = bArr.length;
        }
        this.f31101b = str;
        this.f31102c = arrayList;
        this.f31103d = str2;
        this.f31105f = i9;
        this.f31106g = i8;
    }
}

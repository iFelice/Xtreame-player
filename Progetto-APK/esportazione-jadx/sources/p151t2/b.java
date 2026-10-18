package p151t2;

import B0.C0041c;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f30264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File[] f30265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File[] f30266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0041c f30268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f30269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ d f30270h;

    public b(d dVar, String str) {
        this.f30270h = dVar;
        this.f30263a = str;
        int i8 = dVar.f30282M;
        this.f30264b = new long[i8];
        this.f30265c = new File[i8];
        this.f30266d = new File[i8];
        StringBuilder sb = new StringBuilder(str);
        sb.append('.');
        int length = sb.length();
        for (int i9 = 0; i9 < dVar.f30282M; i9++) {
            sb.append(i9);
            File[] fileArr = this.f30265c;
            String string = sb.toString();
            File file = dVar.f30276G;
            fileArr[i9] = new File(file, string);
            sb.append(".tmp");
            this.f30266d[i9] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        for (long j8 : this.f30264b) {
            sb.append(' ');
            sb.append(j8);
        }
        return sb.toString();
    }
}

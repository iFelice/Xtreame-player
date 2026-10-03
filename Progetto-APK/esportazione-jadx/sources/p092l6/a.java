package p092l6;

import p070i6.b;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final a f26634G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ a[] f26635H;

    static {
        a aVar = new a("INSTANCE", 0);
        f26634G = aVar;
        f26635H = new a[]{aVar, new a("NEVER", 1)};
    }

    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    public static a[] values() {
        return (a[]) f26635H.clone();
    }

    @Override // p070i6.b
    public final void a() {
    }
}

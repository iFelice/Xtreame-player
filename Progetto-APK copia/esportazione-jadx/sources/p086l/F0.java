package p086l;

/* JADX INFO: loaded from: classes.dex */
public final class F0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26108G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ M0 f26109H;

    public /* synthetic */ F0(M0 m7, int i8) {
        this.f26108G = i8;
        this.f26109H = m7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26108G;
        M0 m7 = this.f26109H;
        switch (i8) {
            case 1:
                C3066z0 c3066z0 = m7.f26132I;
                if (c3066z0 != null) {
                    c3066z0.setListSelectionHidden(true);
                    c3066z0.requestLayout();
                }
                break;
            default:
                C3066z0 c3066z1 = m7.f26132I;
                if (c3066z1 != null && c3066z1.isAttachedToWindow() && m7.f26132I.getCount() > m7.f26132I.getChildCount() && m7.f26132I.getChildCount() <= m7.f26142S) {
                    m7.f26154e0.setInputMethodMode(2);
                    m7.h();
                    break;
                }
                break;
        }
    }
}

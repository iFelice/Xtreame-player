package androidx.leanback.transition;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class d extends T.b {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f9066H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ d(int i8) {
        super(1);
        this.f9066H = i8;
    }

    @Override // androidx.leanback.transition.f
    public final float b(View view) {
        switch (this.f9066H) {
            case 0:
                return view.getTranslationX() - view.getWidth();
            case 1:
                return view.getTranslationX() + view.getWidth();
            case 2:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() + view.getWidth() : view.getTranslationX() - view.getWidth();
            default:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() - view.getWidth() : view.getTranslationX() + view.getWidth();
        }
    }
}

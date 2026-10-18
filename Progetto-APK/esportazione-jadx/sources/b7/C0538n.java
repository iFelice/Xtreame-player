package b7;

import android.util.Log;
import pe.hf.black20.CategoriesActivity;

/* JADX INFO: renamed from: b7.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C0538n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10355a;

    public /* synthetic */ C0538n(CategoriesActivity categoriesActivity) {
        this.f10355a = categoriesActivity;
    }

    public final void a(K.k kVar) {
        CategoriesActivity categoriesActivity = this.f10355a;
        if (kVar != null) {
            String str = CategoriesActivity.THEME;
            categoriesActivity.getClass();
            Log.w("XCIPTV_TAG", kVar.f4294H + ": " + ((String) kVar.f4295I));
        }
        if (categoriesActivity.f28386D0.a()) {
            categoriesActivity.h();
        }
    }
}

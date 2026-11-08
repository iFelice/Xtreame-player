package b7;

import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class r1 implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10403G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ A1 f10404H;

    public /* synthetic */ r1(A1 a8, int i8) {
        this.f10403G = i8;
        this.f10404H = a8;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10403G;
        A1 a8 = this.f10404H;
        switch (i8) {
            case 0:
                ((InputMethodManager) a8.l().getSystemService("input_method")).hideSoftInputFromWindow(a8.f9949I0.getWindowToken(), 0);
                if (!p000a.r.s(a8.f9949I0)) {
                    a8.f9965Y0.setVisibility(8);
                    a8.f9966Z0.setVisibility(0);
                    String string = a8.f9949I0.getText().toString();
                    Log.d("XCIPTV_TAG", "-----------------------------calling getCat()");
                    new Thread(new t1(string, a8, true, false)).start();
                } else {
                    a8.f9949I0.setError(a8.l().getString(R.string.xc_search_empty));
                }
                break;
            case 1:
                ((InputMethodManager) a8.l().getSystemService("input_method")).hideSoftInputFromWindow(a8.f9949I0.getWindowToken(), 0);
                if (!p000a.r.s(a8.f9949I0)) {
                    a8.f9965Y0.setVisibility(8);
                    a8.f9966Z0.setVisibility(0);
                    String string2 = a8.f9949I0.getText().toString();
                    Log.d("XCIPTV_TAG", "-----------------------------calling getCat()");
                    new Thread(new t1(string2, a8, false, true)).start();
                } else {
                    a8.f9949I0.setError(a8.l().getString(R.string.xc_search_empty));
                }
                break;
            case 2:
                int i9 = A1.f9942a1;
                a8.f9965Y0.setVisibility(0);
                a8.f9966Z0.setVisibility(8);
                a8.f9945E0.setVisibility(0);
                a8.f9949I0.requestFocus();
                break;
            default:
                a8.j().finish();
                break;
        }
    }
}

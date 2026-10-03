package androidx.leanback.widget;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import b7.AbstractC0559y;
import b7.I0;
import b7.M0;
import b7.S0;
import com.google.protobuf.U2;
import pe.hf.black20.ChannelListActivity;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class H implements TextView.OnEditorActionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9116b;

    public /* synthetic */ H(Object obj, int i8) {
        this.f9115a = i8;
        this.f9116b = obj;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i8, KeyEvent keyEvent) {
        int i9 = this.f9115a;
        Object obj = this.f9116b;
        switch (i9) {
            case 0:
                if (3 == i8 || i8 == 0) {
                    ((SearchBar) obj).getClass();
                }
                if (1 == i8) {
                    ((SearchBar) obj).getClass();
                }
                if (2 != i8) {
                    return false;
                }
                SearchBar searchBar = (SearchBar) obj;
                searchBar.f9198O.hideSoftInputFromWindow(searchBar.f9190G.getWindowToken(), 0);
                searchBar.f9197N.postDelayed(new G(this), 500L);
                return true;
            case 1:
                if (i8 != 3) {
                    return false;
                }
                ChannelListActivity channelListActivity = (ChannelListActivity) obj;
                if (p000a.r.s(channelListActivity.f28464a0)) {
                    channelListActivity.f28464a0.setError(channelListActivity.f28444G.getString(R.string.xc_search_empty));
                    return true;
                }
                ((InputMethodManager) channelListActivity.getSystemService("input_method")).hideSoftInputFromWindow(channelListActivity.f28464a0.getWindowToken(), 0);
                channelListActivity.f28469f0 = "yes";
                if (U2.z("ORT_WHICH_CAT", "TV", "TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    new b7.D(channelListActivity, 6).execute(new Void[0]);
                } else {
                    b7.A a8 = null;
                    byte b8 = 0;
                    if (U2.z("ORT_WHICH_CAT", "TV", "VOD")) {
                        new b7.D(channelListActivity, a8).execute(new Void[0]);
                    } else if (U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                        new b7.D(channelListActivity, (AbstractC0559y) (b8 == true ? 1 : 0)).execute(new Void[0]);
                    }
                }
                channelListActivity.f28467d0.setVisibility(8);
                return true;
            case 2:
                if (i8 != 3) {
                    return false;
                }
                I0 i10 = (I0) obj;
                if (p000a.r.s(i10.f10069k1)) {
                    i10.f10069k1.setError(i10.l().getString(R.string.xc_search_empty));
                    return true;
                }
                i10.f10073o1 = false;
                i10.f10074p1 = "search";
                ((InputMethodManager) i10.l().getSystemService("input_method")).hideSoftInputFromWindow(i10.f10069k1.getWindowToken(), 0);
                i10.U(i10.f10069k1.getText().toString());
                i10.W(textView, true);
                return true;
            case 3:
                if (i8 != 3) {
                    return false;
                }
                M0 m7 = (M0) obj;
                if (p000a.r.s(m7.f10129Q0)) {
                    m7.f10129Q0.setError(m7.l().getString(R.string.xc_search_empty));
                    return true;
                }
                ((InputMethodManager) m7.l().getSystemService("input_method")).hideSoftInputFromWindow(m7.f10129Q0.getWindowToken(), 0);
                m7.U("search", m7.f10129Q0.getText().toString());
                m7.V(textView, true);
                return true;
            default:
                if (i8 != 3) {
                    return false;
                }
                S0 s7 = (S0) obj;
                if (p000a.r.s(s7.f10195Q0)) {
                    s7.f10195Q0.setError(s7.l().getString(R.string.xc_search_empty));
                    return true;
                }
                s7.f10214j1 = false;
                s7.f10209e1 = "search";
                ((InputMethodManager) s7.l().getSystemService("input_method")).hideSoftInputFromWindow(s7.f10195Q0.getWindowToken(), 0);
                s7.W(s7.f10195Q0.getText().toString());
                s7.Z(textView, true);
                return true;
        }
    }
}

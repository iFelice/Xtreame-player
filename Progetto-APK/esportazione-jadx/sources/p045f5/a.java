package p045f5;

import O5.g;
import P5.b;
import Z3.C0433o;
import Z5.AbstractC0463u;
import Z5.W;
import Z5.Z;
import android.util.Log;
import android.widget.ListAdapter;
import b7.AsyncTaskC0547s;
import b7.C0531k1;
import b7.G;
import b7.S;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25216G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25217H;

    public /* synthetic */ a(Object obj, int i8) {
        this.f25216G = i8;
        this.f25217H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f25216G;
        Object obj = this.f25217H;
        switch (i8) {
            case 1:
                g.a((g) ((C0433o) obj).f8372H);
                return;
            case 2:
                b bVar = ((P5.a) obj).f5917a;
                bVar.f5920b = false;
                bVar.a();
                return;
            case 3:
                AbstractC0463u abstractC0463u = (AbstractC0463u) obj;
                abstractC0463u.getClass();
                abstractC0463u.getClass();
                return;
            case 4:
                ((W) obj).n();
                return;
            case 5:
                ((Z) obj).getClass();
                throw null;
            case 6:
                CategoriesActivity categoriesActivity = (CategoriesActivity) obj;
                String str = CategoriesActivity.THEME;
                categoriesActivity.getClass();
                if (q0.q().c("ORT_PORTAL_CHANGE", "no").equals("yes")) {
                    categoriesActivity.k();
                    return;
                }
                try {
                    Date date = categoriesActivity.f28396M.parse(categoriesActivity.f28407X);
                    Date date2 = categoriesActivity.f28396M.parse(categoriesActivity.f28391H.getString("tvvodseries_dl_time", null));
                    int iJ = Methods.j(date2, date);
                    if (Methods.j(date2, date) > 24) {
                        categoriesActivity.k();
                        return;
                    }
                    if (q0.q().c("ORT_WHICH_PANEL", "xtreamcodes").equals("xtreamcodes")) {
                        categoriesActivity.a();
                    }
                    Log.v("XCIPTV_TAG", "CategoriesActivity - TV VOD Sereis - Content updated less than 6 hrs ago." + String.valueOf(iJ));
                    if (categoriesActivity.f28391H.contains("load_last_channel") && categoriesActivity.f28391H.getString("load_last_channel", null).equals("yes")) {
                        if (!categoriesActivity.f28391H.contains("last_profile")) {
                            if (CategoriesActivity.f28377I0 || !categoriesActivity.f28391H.contains("last_channel_name")) {
                                return;
                            }
                            q0.q().e("ORT_isLoadLastLiveTVChannel", true);
                            CategoriesActivity.f28377I0 = true;
                            categoriesActivity.f28431v0 = true;
                            new AsyncTaskC0547s(categoriesActivity).execute(new Void[0]);
                            return;
                        }
                        if (categoriesActivity.f28391H.getString("last_profile", null).equals(q0.q().c("ORT_PROFILE", "Default (XC)")) && !CategoriesActivity.f28377I0 && categoriesActivity.f28391H.contains("last_channel_name")) {
                            q0.q().e("ORT_isLoadLastLiveTVChannel", true);
                            CategoriesActivity.f28377I0 = true;
                            categoriesActivity.f28431v0 = true;
                            new AsyncTaskC0547s(categoriesActivity).execute(new Void[0]);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (ParseException unused) {
                    return;
                }
            case 7:
                LoginActivity loginActivity = ((S) obj).f10179b;
                if (loginActivity.f28577M.isShowing()) {
                    loginActivity.f28577M.dismiss();
                }
                loginActivity.f28562D0 = false;
                loginActivity.d(loginActivity.f28575L, "Your device activation was successful!");
                return;
            case 8:
                ViewOnClickListenerC2988c viewOnClickListenerC2988c = (ViewOnClickListenerC2988c) obj;
                viewOnClickListenerC2988c.getClass();
                Log.d("XCIPTV_TAG", "PlayStreamEPGActivity - Disapear Media Control View.");
                PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) viewOnClickListenerC2988c.f25036H;
                playStreamEPGActivity.f28857J0.setVisibility(8);
                playStreamEPGActivity.f28905d2.setVisibility(8);
                playStreamEPGActivity.f28940p1.setVisibility(8);
                return;
            default:
                EPGActivityXMLTV ePGActivityXMLTV = ((d7.a) obj).f24663H;
                ArrayList arrayList = ePGActivityXMLTV.f29277J;
                if (arrayList == null || arrayList.size() <= 0) {
                    if (EPGActivityXMLTV.f29253f0.isShowing()) {
                        EPGActivityXMLTV.f29253f0.dismiss();
                        return;
                    }
                    return;
                }
                EPGActivityXMLTV.f29257j0.setAdapter((ListAdapter) null);
                EPGActivityXMLTV.f29258k0.setAdapter((ListAdapter) null);
                EPGActivityXMLTV.f29257j0.setAdapter((ListAdapter) new C0531k1(1, ePGActivityXMLTV, ePGActivityXMLTV.f29279L));
                EPGActivityXMLTV.f29257j0.setSelection(0);
                EPGActivityXMLTV.f29258k0.setAdapter((ListAdapter) new G(ePGActivityXMLTV, ePGActivityXMLTV.f29279L, ePGActivityXMLTV.f29297d0));
                EPGActivityXMLTV.f29258k0.setSelection(0);
                return;
        }
    }
}

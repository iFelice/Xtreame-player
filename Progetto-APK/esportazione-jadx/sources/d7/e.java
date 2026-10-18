package d7;

import android.view.View;
import android.widget.TextView;
import b7.G;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;
import pe.hf.black20.util.Methods;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f24671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ G f24672b;

    public /* synthetic */ e(G g8, int i8) {
        this.f24671a = i8;
        this.f24672b = g8;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        Date date;
        switch (this.f24671a) {
            case 0:
                if (z7) {
                    EPGActivityXMLTV.f29255h0.setText(R.string.no_program_data);
                    EPGActivityXMLTV.f29254g0.setText(HttpUrl.FRAGMENT_ENCODE_SET);
                    EPGActivityXMLTV.f29256i0.setText(R.string.no_program_data);
                }
                break;
            default:
                if (z7) {
                    String string = ((TextView) view).getText().toString();
                    String str = view.getTag().toString().split("::")[0];
                    String str2 = G.f10002l;
                    G g8 = this.f24672b;
                    g8.getClass();
                    new ArrayList();
                    ArrayList arrayListO = EPGActivityXMLTV.f29252C0.O(str, "no-channel", string);
                    if (q0.q().a("ORT_isDemo", false)) {
                        EPGActivityXMLTV.f29255h0.setText("Program Name");
                        EPGActivityXMLTV.f29254g0.setText(R.string.dummyProgramOneTime);
                        EPGActivityXMLTV.f29256i0.setText(R.string.dummyDescription);
                    } else if (arrayListO.size() > 0) {
                        String strC = Methods.c(((g) arrayListO.get(0)).f24677a);
                        String strC2 = Methods.c(((g) arrayListO.get(0)).f24678b);
                        EPGActivityXMLTV.f29255h0.setText(((g) arrayListO.get(0)).f24680d);
                        if (q0.q().c("ORT_TIME_FORMAT", "12").equals("24")) {
                            EPGActivityXMLTV.f29254g0.setText(Methods.r(g8.f10006b, strC, "yyyyMMddHHmmss") + " - " + Methods.r(g8.f10006b, strC2, "yyyyMMddHHmmss"));
                        } else {
                            TextView textView = EPGActivityXMLTV.f29254g0;
                            StringBuilder sb = new StringBuilder();
                            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
                            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("hh:mm aa");
                            Date date2 = null;
                            try {
                                date = simpleDateFormat.parse(strC);
                            } catch (ParseException unused) {
                                date = null;
                            }
                            sb.append(simpleDateFormat2.format(date));
                            sb.append(" - ");
                            SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyyMMddHHmmss");
                            SimpleDateFormat simpleDateFormat4 = new SimpleDateFormat("hh:mm aa");
                            try {
                                date2 = simpleDateFormat3.parse(strC2);
                                break;
                            } catch (ParseException unused2) {
                            }
                            sb.append(simpleDateFormat4.format(date2));
                            textView.setText(sb.toString());
                        }
                        EPGActivityXMLTV.f29256i0.setText(((g) arrayListO.get(0)).f24681e);
                    }
                }
                break;
        }
    }
}

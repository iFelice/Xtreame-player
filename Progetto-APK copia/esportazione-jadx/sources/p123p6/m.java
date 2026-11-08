package p123p6;

import A0.O;
import N6.h;
import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import b7.C0544q;
import b7.H1;
import b7.r;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import l7.a;
import l7.b;
import p185x6.k;
import pe.hf.black20.CategoriesActivity;
import pe.hf.black20.R;
import pe.hf.black20.SettingsMenuActivity;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class m implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28257G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f28258H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f28259I;

    public /* synthetic */ m(int i8, Object obj, Object obj2) {
        this.f28257G = i8;
        this.f28259I = obj;
        this.f28258H = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a aVar = null;
        switch (this.f28257G) {
            case 0:
                ((l) this.f28258H).getClass();
                ((n) this.f28259I).getClass();
                throw null;
            case 1:
                int i8 = 0;
                while (true) {
                    try {
                        ((Runnable) this.f28258H).run();
                    } catch (Throwable th) {
                        q0.w(k.f31227G, th);
                    }
                    h hVar = (h) this.f28259I;
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = h.f4975N;
                    Runnable runnableD0 = hVar.d0();
                    if (runnableD0 == null) {
                        return;
                    }
                    this.f28258H = runnableD0;
                    i8++;
                    if (i8 >= 16 && hVar.f4976I.b0(hVar)) {
                        hVar.f4976I.a0(hVar, this);
                        return;
                    }
                    break;
                }
                break;
            case 2:
                if (((Intent) this.f28258H).hasExtra("what")) {
                    String stringExtra = ((Intent) this.f28258H).getStringExtra("what");
                    boolean zEquals = stringExtra.equals("msg");
                    Object obj = this.f28259I;
                    if (zEquals) {
                        if (!((Intent) this.f28258H).getStringExtra("success").equals("1")) {
                            C0544q c0544q = (C0544q) obj;
                            CategoriesActivity categoriesActivity = c0544q.f10385b;
                            String str = CategoriesActivity.THEME;
                            categoriesActivity.getClass();
                            c0544q.f10385b.f28420k0.setBackgroundResource(R.drawable.cat_notification_no);
                            return;
                        }
                        C0544q c0544q2 = (C0544q) obj;
                        CategoriesActivity categoriesActivity2 = c0544q2.f10385b;
                        String str2 = CategoriesActivity.THEME;
                        categoriesActivity2.getClass();
                        CategoriesActivity categoriesActivity3 = c0544q2.f10385b;
                        ((Intent) this.f28258H).getStringExtra("msg_txt");
                        categoriesActivity3.getClass();
                        c0544q2.f10385b.f28420k0.setBackgroundResource(R.drawable.cat_notification_yes);
                        return;
                    }
                    if (stringExtra.equals("pr")) {
                        C0544q c0544q3 = (C0544q) obj;
                        if (c0544q3.f10385b.isFinishing()) {
                            return;
                        }
                        CategoriesActivity categoriesActivity4 = c0544q3.f10385b;
                        String stringExtra2 = ((Intent) this.f28258H).getStringExtra("title");
                        String stringExtra3 = ((Intent) this.f28258H).getStringExtra("desc");
                        String stringExtra4 = ((Intent) this.f28258H).getStringExtra("time");
                        CategoriesActivity categoriesActivity5 = categoriesActivity4.f28389G;
                        View viewInflate = LayoutInflater.from(categoriesActivity5).inflate(R.layout.xciptv_dialog_program_reminder_popup, (ViewGroup) null);
                        AlertDialog alertDialogCreate = new AlertDialog.Builder(categoriesActivity5).create();
                        TextView textView = (TextView) O.w(alertDialogCreate.getWindow(), new ColorDrawable(Color.parseColor("#99000000")), alertDialogCreate, viewInflate, R.id.txt_title);
                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.txt_desc);
                        TextView textView3 = (TextView) viewInflate.findViewById(R.id.txt_time);
                        textView.setText(stringExtra2);
                        textView2.setText(stringExtra3);
                        textView3.setText(stringExtra4);
                        Button button = (Button) viewInflate.findViewById(R.id.button_yes);
                        button.setOnClickListener(new r(categoriesActivity4, alertDialogCreate, 3));
                        ((Button) viewInflate.findViewById(R.id.button_no)).setOnClickListener(new r(categoriesActivity4, alertDialogCreate, 4));
                        button.setFocusable(true);
                        button.requestFocus();
                        alertDialogCreate.show();
                        return;
                    }
                    return;
                }
                return;
            case 3:
                if (((Intent) this.f28258H).hasExtra("commandText")) {
                    String stringExtra5 = ((Intent) this.f28258H).getStringExtra("commandText");
                    SettingsMenuActivity settingsMenuActivity = ((H1) this.f28259I).f10030b;
                    int i9 = SettingsMenuActivity.f29155W;
                    settingsMenuActivity.getClass();
                    if (SettingsMenuActivity.f29156X.isFocused()) {
                        SettingsMenuActivity.f29156X.setText(stringExtra5);
                        settingsMenuActivity.f29168R.requestFocus();
                        return;
                    }
                    return;
                }
                return;
            default:
                new b(((b) this.f28259I).f26637b, aVar).execute((String) this.f28258H);
                return;
        }
    }
}

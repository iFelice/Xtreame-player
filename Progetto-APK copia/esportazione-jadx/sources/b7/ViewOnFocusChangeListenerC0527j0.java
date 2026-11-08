package b7;

import Y.AbstractComponentCallbacksC0406s;
import android.graphics.Color;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import java.util.HashMap;
import pe.hf.black20.ORPlayerMainActivity;
import pe.hf.black20.R;
import pe.hf.black20.epg.EPGActivityXMLTV;

/* JADX INFO: renamed from: b7.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnFocusChangeListenerC0527j0 implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10326c;

    public /* synthetic */ ViewOnFocusChangeListenerC0527j0(int i8, Object obj, Object obj2) {
        this.f10324a = i8;
        this.f10326c = obj;
        this.f10325b = obj2;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10324a;
        Object obj = this.f10326c;
        Object obj2 = this.f10325b;
        switch (i8) {
            case 0:
                if (!z7) {
                    C0518g0 c0518g0 = (C0518g0) obj2;
                    c0518g0.f10300a0.setVisibility(8);
                    c0518g0.f10303d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                    C0550t0 c0550t0 = (C0550t0) ((C0530k0) obj).f10335N;
                    int i9 = C0550t0.f10419V1;
                    c0550t0.a0();
                } else {
                    C0518g0 c0518g1 = (C0518g0) obj2;
                    c0518g1.f10303d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    int i10 = Integer.parseInt(view.getTag().toString());
                    C0530k0 c0530k0 = (C0530k0) obj;
                    C0550t0.W((C0550t0) c0530k0.f10335N, true);
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = c0530k0.f10335N;
                    C0550t0.X((C0550t0) abstractComponentCallbacksC0406s, false);
                    if (!z4.q0.q().a("ORT_isDemo", false)) {
                        C0550t0 c0550t1 = (C0550t0) abstractComponentCallbacksC0406s;
                        c0550t1.f10439K1 = (String) ((HashMap) c0550t1.f10470f1.get(i10)).get("epg_channel_id");
                        C0550t0 c0550t2 = (C0550t0) abstractComponentCallbacksC0406s;
                        c0550t2.f10431G1.setText(((String) ((HashMap) c0550t2.f10470f1.get(i10)).get("name")).toUpperCase());
                        C0550t0 c0550t3 = (C0550t0) abstractComponentCallbacksC0406s;
                        c0550t3.f10459U1 = (String) ((HashMap) c0550t3.f10470f1.get(i10)).get("name");
                        c0518g1.f10300a0.setVisibility(0);
                        C0550t0 c0550t4 = (C0550t0) abstractComponentCallbacksC0406s;
                        c0550t4.getClass();
                        ORPlayerMainActivity.f28775G0 = false;
                        RunnableC0506c0 runnableC0506c0 = c0550t4.f10435I1;
                        if (runnableC0506c0 != null) {
                            c0550t4.f10433H1.removeCallbacks(runnableC0506c0);
                            c0550t4.f10433H1.removeCallbacksAndMessages(null);
                        }
                        Handler handler = new Handler();
                        c0550t4.f10433H1 = handler;
                        RunnableC0506c0 runnableC0506c1 = new RunnableC0506c0(c0550t4, 3);
                        c0550t4.f10435I1 = runnableC0506c1;
                        handler.postDelayed(runnableC0506c1, 1000L);
                    } else {
                        c0518g1.f10300a0.setText((CharSequence) ((HashMap) ((C0550t0) abstractComponentCallbacksC0406s).f10470f1.get(i10)).get("name"));
                        ((C0550t0) abstractComponentCallbacksC0406s).f10431G1.setText("2131951753" + String.valueOf(i10));
                        ((C0550t0) abstractComponentCallbacksC0406s).f10420A1.setText("Current Program Title");
                        ((C0550t0) abstractComponentCallbacksC0406s).f10421B1.setText(R.string.dummyProgramOneTime);
                        ((C0550t0) abstractComponentCallbacksC0406s).f10423C1.setText(R.string.dummyDescription);
                        ((C0550t0) abstractComponentCallbacksC0406s).f10425D1.setText("Next Program Title");
                        ((C0550t0) abstractComponentCallbacksC0406s).f10427E1.setText(R.string.dummyProgramTwoTime);
                        ((C0550t0) abstractComponentCallbacksC0406s).f10429F1.setText(R.string.dummyDescription);
                    }
                }
                break;
            case 1:
                if (!z7) {
                    C0545q0 c0545q0 = (C0545q0) obj2;
                    c0545q0.f10386a0.setVisibility(8);
                    c0545q0.f10389d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i11 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0545q0) obj2).f10386a0.setText("Movie " + String.valueOf(i11));
                    }
                    C0545q0 c0545q1 = (C0545q0) obj2;
                    c0545q1.f10386a0.setVisibility(0);
                    c0545q1.f10389d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0536m0 c0536m0 = (C0536m0) obj;
                    C0550t0.W(c0536m0.f10352L, false);
                    C0550t0 c0550t5 = c0536m0.f10352L;
                    C0550t0.X(c0550t5, true);
                    C0550t0.S(c0550t5, "cont", i11);
                }
                break;
            case 2:
                if (!z7) {
                    C0546r0 c0546r0 = (C0546r0) obj2;
                    c0546r0.f10399a0.setVisibility(8);
                    c0546r0.f10402d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i12 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0546r0) obj2).f10399a0.setText("Movie " + String.valueOf(i12));
                    }
                    C0546r0 c0546r1 = (C0546r0) obj2;
                    c0546r1.f10399a0.setVisibility(0);
                    c0546r1.f10402d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0536m0 c0536m1 = (C0536m0) obj;
                    C0550t0.W(c0536m1.f10352L, false);
                    C0550t0 c0550t6 = c0536m1.f10352L;
                    C0550t0.X(c0550t6, true);
                    C0550t0.S(c0550t6, "fav", i12);
                }
                break;
            case 3:
                if (!z7) {
                    C0548s0 c0548s0 = (C0548s0) obj2;
                    c0548s0.f10407a0.setVisibility(8);
                    c0548s0.f10410d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i13 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0548s0) obj2).f10407a0.setText("Movie " + String.valueOf(i13));
                    }
                    C0548s0 c0548s1 = (C0548s0) obj2;
                    c0548s1.f10407a0.setVisibility(0);
                    c0548s1.f10410d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0536m0 c0536m2 = (C0536m0) obj;
                    C0550t0 c0550t7 = c0536m2.f10352L;
                    int i14 = C0550t0.f10419V1;
                    c0550t7.Z();
                    C0550t0 c0550t8 = c0536m2.f10352L;
                    C0550t0.W(c0550t8, false);
                    C0550t0.X(c0550t8, true);
                    C0550t0.S(c0550t8, "new", i13);
                }
                break;
            case 4:
                if (!z7) {
                    C0539n0 c0539n0 = (C0539n0) obj2;
                    c0539n0.f10356a0.setVisibility(8);
                    c0539n0.f10359d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i15 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0539n0) obj2).f10356a0.setText("Movie " + String.valueOf(i15));
                    }
                    C0539n0 c0539n1 = (C0539n0) obj2;
                    c0539n1.f10356a0.setVisibility(0);
                    c0539n1.f10359d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0524i0 c0524i0 = (C0524i0) obj;
                    C0550t0.W(c0524i0.f10316L, false);
                    C0550t0 c0550t9 = c0524i0.f10316L;
                    C0550t0.X(c0550t9, true);
                    C0550t0.T(c0550t9, "cont", i15);
                }
                break;
            case 5:
                if (!z7) {
                    C0541o0 c0541o0 = (C0541o0) obj2;
                    c0541o0.f10364a0.setVisibility(8);
                    c0541o0.f10367d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i16 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0541o0) obj2).f10364a0.setText("Movie " + String.valueOf(i16));
                    }
                    C0541o0 c0541o1 = (C0541o0) obj2;
                    c0541o1.f10364a0.setVisibility(0);
                    c0541o1.f10367d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0524i0 c0524i1 = (C0524i0) obj;
                    C0550t0.W(c0524i1.f10316L, false);
                    C0550t0 c0550t10 = c0524i1.f10316L;
                    C0550t0.X(c0550t10, true);
                    C0550t0.T(c0550t10, "fav", i16);
                }
                break;
            case 6:
                if (!z7) {
                    C0543p0 c0543p0 = (C0543p0) obj2;
                    c0543p0.f10375a0.setVisibility(8);
                    c0543p0.f10378d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i17 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0543p0) obj2).f10375a0.setText("Movie " + String.valueOf(i17));
                    }
                    C0543p0 c0543p1 = (C0543p0) obj2;
                    c0543p1.f10375a0.setVisibility(0);
                    c0543p1.f10378d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                    C0524i0 c0524i2 = (C0524i0) obj;
                    C0550t0.W(c0524i2.f10316L, false);
                    C0550t0 c0550t11 = c0524i2.f10316L;
                    C0550t0.X(c0550t11, true);
                    C0550t0.T(c0550t11, "new", i17);
                }
                break;
            case 7:
                if (!z7) {
                    ((Button) obj2).setBackgroundColor(0);
                    ((M0) obj).getClass();
                } else {
                    ((Button) obj2).setBackgroundColor(Color.parseColor("#049BA7"));
                    ((M0) obj).getClass();
                }
                break;
            case 8:
                if (!z7) {
                    u1 u1Var = (u1) obj2;
                    u1Var.f10499a0.setVisibility(8);
                    u1Var.f10502d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    u1 u1Var2 = (u1) obj2;
                    u1Var2.f10499a0.setVisibility(0);
                    u1Var2.f10502d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                }
                break;
            case 9:
                if (!z7) {
                    C0548s0 c0548s2 = (C0548s0) obj2;
                    c0548s2.f10407a0.setVisibility(8);
                    c0548s2.f10410d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i18 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((C0548s0) obj2).f10407a0.setText("Movie " + String.valueOf(i18));
                    }
                    C0548s0 c0548s3 = (C0548s0) obj2;
                    c0548s3.f10407a0.setVisibility(0);
                    c0548s3.f10410d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                }
                break;
            case 10:
                if (!z7) {
                    w1 w1Var = (w1) obj2;
                    w1Var.f10518a0.setVisibility(8);
                    w1Var.f10521d0.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                } else {
                    int i19 = Integer.parseInt(view.getTag().toString());
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((w1) obj2).f10518a0.setText("Movie " + String.valueOf(i19));
                    }
                    w1 w1Var2 = (w1) obj2;
                    w1Var2.f10518a0.setVisibility(0);
                    w1Var2.f10521d0.setBackgroundResource(R.drawable.orplayer_card_selected);
                }
                break;
            default:
                if (!z7) {
                    ((Button) obj2).setBackgroundColor(0);
                } else {
                    ((Button) obj2).setBackgroundColor(((EPGActivityXMLTV) obj).getResources().getColor(R.color.orplayer_focuse_item_color));
                }
                break;
        }
    }
}

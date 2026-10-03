package e7;

import B0.O;
import D1.S;
import Y.AbstractComponentCallbacksC0406s;
import Y.DialogInterfaceOnCancelListenerC0401m;
import android.app.Dialog;
import android.content.DialogInterface;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.TrackSelectionView;
import androidx.viewpager.widget.ViewPager;
import b7.DialogInterfaceOnClickListenerC0510d1;
import b7.DialogInterfaceOnDismissListenerC0501a1;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p004a3.i;
import p039f.M;
import p094m0.h0;
import p094m0.j0;
import p094m0.k0;
import p094m0.l0;
import p094m0.m0;
import pe.hf.black20.R;
import z4.AbstractC3237a;
import z4.F;
import z4.H;
import z4.J;
import z4.d0;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends DialogInterfaceOnCancelListenerC0401m {

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public static final d0 f24881X0;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public final SparseArray f24882S0 = new SparseArray();

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public final ArrayList f24883T0 = new ArrayList();

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public int f24884U0;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public DialogInterface.OnClickListener f24885V0;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public DialogInterface.OnDismissListener f24886W0;

    public static final class a extends AbstractComponentCallbacksC0406s implements S {

        /* JADX INFO: renamed from: C0, reason: collision with root package name */
        public List f24887C0;

        /* JADX INFO: renamed from: D0, reason: collision with root package name */
        public boolean f24888D0;

        /* JADX INFO: renamed from: E0, reason: collision with root package name */
        public boolean f24889E0;

        /* JADX INFO: renamed from: F0, reason: collision with root package name */
        public boolean f24890F0;

        /* JADX INFO: renamed from: G0, reason: collision with root package name */
        public Map f24891G0;

        public a() {
            P();
        }

        public final void S(ArrayList arrayList, boolean z7, J j8) {
            this.f24887C0 = arrayList;
            this.f24890F0 = z7;
            this.f24888D0 = true;
            this.f24889E0 = false;
            this.f24891G0 = new HashMap(TrackSelectionView.a(j8, false, arrayList));
        }

        @Override // Y.AbstractComponentCallbacksC0406s
        public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            View viewInflate = layoutInflater.inflate(R.layout.exo_track_selection_dialog, viewGroup, false);
            TrackSelectionView trackSelectionView = (TrackSelectionView) viewInflate.findViewById(R.id.exo_track_selection_view);
            trackSelectionView.setShowDisableOption(true);
            trackSelectionView.setAllowMultipleOverrides(this.f24889E0);
            trackSelectionView.setAllowAdaptiveSelections(this.f24888D0);
            List list = this.f24887C0;
            boolean z7 = this.f24890F0;
            Map map = this.f24891G0;
            trackSelectionView.f9533R = z7;
            trackSelectionView.f9534S = null;
            trackSelectionView.f9535T = this;
            ArrayList arrayList = trackSelectionView.f9527L;
            arrayList.clear();
            arrayList.addAll(list);
            HashMap map2 = trackSelectionView.f9528M;
            map2.clear();
            map2.putAll(TrackSelectionView.a(map, trackSelectionView.f9530O, list));
            trackSelectionView.c();
            return viewInflate;
        }
    }

    static {
        F f8 = H.f31804H;
        Object[] objArr = {2, 1, 3, 4};
        Cw.d(4, objArr);
        f24881X0 = H.p(4, objArr);
    }

    public d() {
        P();
    }

    public static void V(k0 k0Var, d dVar, i iVar) {
        j0 j0VarA = k0Var.a();
        int i8 = 0;
        while (true) {
            d0 d0Var = f24881X0;
            if (i8 >= d0Var.size()) {
                iVar.a(j0VarA.b());
                return;
            }
            int iIntValue = ((Integer) d0Var.get(i8)).intValue();
            a aVar = (a) dVar.f24882S0.get(iIntValue);
            j0VarA.j(iIntValue, aVar != null && aVar.f24890F0);
            j0VarA.c(iIntValue);
            a aVar2 = (a) dVar.f24882S0.get(iIntValue);
            Iterator it = (aVar2 == null ? Collections.emptyMap() : aVar2.f24891G0).values().iterator();
            while (it.hasNext()) {
                j0VarA.a((h0) it.next());
            }
            i8++;
        }
    }

    public static d W(ExoPlayer exoPlayer, DialogInterfaceOnDismissListenerC0501a1 dialogInterfaceOnDismissListenerC0501a1) {
        O o4 = (O) exoPlayer;
        m0 m0VarY = o4.y();
        k0 k0VarE = o4.E();
        i iVar = new i(o4, 18);
        d dVar = new d();
        DialogInterfaceOnClickListenerC0510d1 dialogInterfaceOnClickListenerC0510d1 = new DialogInterfaceOnClickListenerC0510d1(k0VarE, dVar, iVar, 1);
        dVar.f24884U0 = R.string.track_selection_title;
        dVar.f24885V0 = dialogInterfaceOnClickListenerC0510d1;
        dVar.f24886W0 = dialogInterfaceOnDismissListenerC0501a1;
        int i8 = 0;
        while (true) {
            d0 d0Var = f24881X0;
            if (i8 >= d0Var.size()) {
                return dVar;
            }
            Integer num = (Integer) d0Var.get(i8);
            int iIntValue = num.intValue();
            ArrayList arrayList = new ArrayList();
            AbstractC1349gB abstractC1349gBU = m0VarY.a().u();
            while (true) {
                AbstractC3237a abstractC3237a = (AbstractC3237a) abstractC1349gBU;
                if (!abstractC3237a.hasNext()) {
                    break;
                }
                l0 l0Var = (l0) abstractC3237a.next();
                if (l0Var.a() == iIntValue) {
                    arrayList.add(l0Var);
                }
            }
            if (!arrayList.isEmpty()) {
                a aVar = new a();
                aVar.S(arrayList, k0VarE.f26916E.contains(num), k0VarE.f26915D);
                dVar.f24882S0.put(iIntValue, aVar);
                dVar.f24883T0.add(num);
            }
            i8++;
        }
    }

    public static boolean X(ExoPlayer exoPlayer) {
        F fListIterator = ((O) exoPlayer).y().f26959a.listIterator(0);
        while (fListIterator.hasNext()) {
            if (f24881X0.contains(Integer.valueOf(((l0) fListIterator.next()).f26949b.f26859c))) {
                return true;
            }
        }
        return false;
    }

    @Override // Y.DialogInterfaceOnCancelListenerC0401m
    public final Dialog T() {
        M m7 = new M(j(), R.style.TrackSelectionDialogThemeOverlay);
        m7.setTitle(this.f24884U0);
        return m7;
    }

    @Override // Y.DialogInterfaceOnCancelListenerC0401m, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        this.f24886W0.onDismiss(dialogInterface);
    }

    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        final int i8 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.exoplayer_track_selection_dialog, viewGroup, false);
        TabLayout tabLayout = (TabLayout) viewInflate.findViewById(R.id.track_selection_dialog_tab_layout);
        ViewPager viewPager = (ViewPager) viewInflate.findViewById(R.id.track_selection_dialog_view_pager);
        Button button = (Button) viewInflate.findViewById(R.id.track_selection_dialog_cancel_button);
        Button button2 = (Button) viewInflate.findViewById(R.id.track_selection_dialog_ok_button);
        viewPager.setAdapter(new c(this, k()));
        tabLayout.setupWithViewPager(viewPager);
        final int i9 = 1;
        tabLayout.setVisibility(this.f24882S0.size() > 1 ? 0 : 8);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: e7.b

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ d f24874H;

            {
                this.f24874H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = i8;
                d dVar = this.f24874H;
                switch (i10) {
                    case 0:
                        d0 d0Var = d.f24881X0;
                        dVar.S(false, false);
                        break;
                    default:
                        dVar.f24885V0.onClick(dVar.f7906N0, -1);
                        dVar.S(false, false);
                        break;
                }
            }
        });
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: e7.b

            /* JADX INFO: renamed from: H, reason: collision with root package name */
            public final /* synthetic */ d f24874H;

            {
                this.f24874H = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i10 = i9;
                d dVar = this.f24874H;
                switch (i10) {
                    case 0:
                        d0 d0Var = d.f24881X0;
                        dVar.S(false, false);
                        break;
                    default:
                        dVar.f24885V0.onClick(dVar.f7906N0, -1);
                        dVar.S(false, false);
                        break;
                }
            }
        });
        return viewInflate;
    }
}

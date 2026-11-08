package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DialogInterfaceOnClickListenerC1275eq implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18604G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f18605H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f18606I;

    public /* synthetic */ DialogInterfaceOnClickListenerC1275eq(int i8, Object obj, Object obj2) {
        this.f18604G = i8;
        this.f18605H = obj;
        this.f18606I = obj2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i8) {
        int i9 = this.f18604G;
        Object obj = this.f18605H;
        Object obj2 = this.f18606I;
        switch (i9) {
            case 0:
                BinderC1431hq binderC1431hq = (BinderC1431hq) obj;
                p105n3.k kVar = (p105n3.k) obj2;
                binderC1431hq.f19151K.k(binderC1431hq.f19152L);
                HashMap map = new HashMap();
                map.put("dialog_action", "dismiss");
                binderC1431hq.D3(binderC1431hq.f19152L, "rtsdc", map);
                if (kVar != null) {
                    kVar.zzb();
                }
                break;
            case 1:
                BinderC1431hq binderC1431hq2 = (BinderC1431hq) obj;
                p105n3.k kVar2 = (p105n3.k) obj2;
                binderC1431hq2.f19151K.k(binderC1431hq2.f19152L);
                HashMap map2 = new HashMap();
                map2.put("dialog_action", "dismiss");
                binderC1431hq2.D3(binderC1431hq2.f19152L, "dialog_click", map2);
                if (kVar2 != null) {
                    kVar2.zzb();
                }
                break;
            default:
                ((JsPromptResult) obj).confirm(((EditText) obj2).getText().toString());
                break;
        }
    }
}

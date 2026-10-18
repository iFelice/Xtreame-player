package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.internal.zzfk;
import com.google.ads.interactivemedia.v3.internal.zzgi;
import com.google.ads.interactivemedia.v3.internal.zzqm;
import com.google.ads.interactivemedia.v3.internal.zzrp;
import java.util.Iterator;
import java.util.List;
import p052g4.d;
import p052g4.h;

/* JADX INFO: loaded from: classes.dex */
public final class zzax extends ImageView implements View.OnClickListener {
    private final com.google.ads.interactivemedia.v3.impl.data.zzbe zza;
    private final zzbi zzb;
    private final String zzc;
    private final List zzd;
    private final zzgi zze;

    private zzax(Context context, zzbi zzbiVar, com.google.ads.interactivemedia.v3.impl.data.zzbe zzbeVar, String str, List list, zzgi zzgiVar) {
        super(context);
        this.zzb = zzbiVar;
        this.zza = zzbeVar;
        this.zzc = str;
        this.zzd = list;
        this.zze = zzgiVar;
    }

    public static zzax zza(Context context, zzbi zzbiVar, com.google.ads.interactivemedia.v3.impl.data.zzbe zzbeVar, h hVar, String str, List list, zzgi zzgiVar) {
        final zzax zzaxVar = new zzax(context, zzbiVar, zzbeVar, str, list, zzgiVar);
        zzaxVar.setOnClickListener(zzaxVar);
        hVar.a(new d() { // from class: com.google.ads.interactivemedia.v3.impl.zzaw
            @Override // p052g4.d
            public final void onComplete(h hVar2) {
                if (hVar2.h()) {
                    this.zza.setImageBitmap((Bitmap) hVar2.f());
                } else {
                    zzfk.zzb("Image companion error", hVar2.e());
                }
            }
        });
        return zzaxVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (!this.zze.zzb(this.zza.clickThroughUrl())) {
            zzfk.zza("The click was ignored because no browser was available.");
            return;
        }
        Iterator it = this.zzd.iterator();
        while (it.hasNext()) {
            ((CompanionAdSlot.ClickListener) it.next()).onCompanionAdClick();
        }
    }

    @Override // android.widget.ImageView
    public final void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        String strCompanionId = this.zza.companionId();
        if (zzqm.zzc(strCompanionId)) {
            return;
        }
        this.zzb.zzn(new JavaScriptMessage(JavaScriptMessage.MsgChannel.displayContainer, JavaScriptMessage.MsgType.companionView, this.zzc, zzrp.zze("companionId", strCompanionId)));
    }
}

package com.google.ads.interactivemedia.v3.internal;

import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes.dex */
final class zzfg implements zzwd {
    public zzfg(zzfh zzfhVar) {
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzwd
    public final /* bridge */ /* synthetic */ zzvw zza(Object obj, Type type, zzwc zzwcVar) {
        CompanionAdSlot companionAdSlot = (CompanionAdSlot) obj;
        return new zzwb(companionAdSlot.getWidth() + "x" + companionAdSlot.getHeight());
    }
}

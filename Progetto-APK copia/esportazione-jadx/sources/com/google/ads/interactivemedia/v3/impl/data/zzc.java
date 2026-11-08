package com.google.ads.interactivemedia.v3.impl.data;

import A0.O;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdPodInfo;
import com.google.ads.interactivemedia.v3.api.CompanionAd;
import com.google.ads.interactivemedia.v3.api.UiElement;
import com.google.ads.interactivemedia.v3.api.UniversalAdId;
import com.google.ads.interactivemedia.v3.internal.zzaho;
import com.google.ads.interactivemedia.v3.internal.zzahp;
import com.google.ads.interactivemedia.v3.internal.zzahr;
import com.google.ads.interactivemedia.v3.internal.zzahs;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class zzc implements Ad {
    private String adId;
    private String adSystem;
    private com.google.ads.interactivemedia.v3.api.zza adUi;
    private String advertiserName;
    private String clickThroughUrl;
    private String contentType;
    private String creativeAdId;
    private String creativeId;
    private String dealId;
    private String description;
    private boolean disableUi;
    private double duration;
    private int height;
    private String surveyUrl;
    private String title;
    private String traffickingParameters;

    @zzahs
    @zzahp
    private Set<UiElement> uiElements;
    private String universalAdIdRegistry;
    private String universalAdIdValue;
    private int vastMediaBitrate;
    private int vastMediaHeight;
    private int vastMediaWidth;
    private int width;
    private boolean linear = false;
    private boolean skippable = false;
    private double skipTimeOffset = -1.0d;

    @zzahs
    @zzahp
    private zzd adPodInfo = new zzd();

    @zzahs
    @zzahp
    private zzbc[] companions = null;

    @zzahs
    @zzahp
    private String[] adWrapperIds = null;

    @zzahs
    @zzahp
    private String[] adWrapperSystems = null;

    @zzahs
    @zzahp
    private String[] adWrapperCreativeIds = null;

    @zzahs
    @zzahp
    private zzcm[] universalAdIds = null;

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return zzaho.zzf(this, obj, false, null, false, "vastMediaBitrate", "vastMediaHeight", "vastMediaWidth");
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getAdId() {
        return this.adId;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public AdPodInfo getAdPodInfo() {
        return this.adPodInfo;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getAdSystem() {
        return this.adSystem;
    }

    public com.google.ads.interactivemedia.v3.api.zza getAdUi() {
        return this.adUi;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String[] getAdWrapperCreativeIds() {
        return this.adWrapperCreativeIds;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String[] getAdWrapperIds() {
        return this.adWrapperIds;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String[] getAdWrapperSystems() {
        return this.adWrapperSystems;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getAdvertiserName() {
        return this.advertiserName;
    }

    public String getClickThruUrl() {
        return this.clickThroughUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public List<CompanionAd> getCompanionAds() {
        zzbc[] zzbcVarArr = this.companions;
        return zzbcVarArr != null ? Arrays.asList(zzbcVarArr) : Arrays.asList(new CompanionAd[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getContentType() {
        return this.contentType;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getCreativeAdId() {
        return this.creativeAdId;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getCreativeId() {
        return this.creativeId;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getDealId() {
        return this.dealId;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getDescription() {
        return this.description;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public double getDuration() {
        return this.duration;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getHeight() {
        return this.height;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public double getSkipTimeOffset() {
        return this.skipTimeOffset;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getSurveyUrl() {
        return this.surveyUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getTitle() {
        return this.title;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getTraffickingParameters() {
        return this.traffickingParameters;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public Set<UiElement> getUiElements() {
        return this.uiElements;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getUniversalAdIdRegistry() {
        return this.universalAdIdRegistry;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public String getUniversalAdIdValue() {
        return this.universalAdIdValue;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public UniversalAdId[] getUniversalAdIds() {
        return this.universalAdIds;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getVastMediaBitrate() {
        return this.vastMediaBitrate;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getVastMediaHeight() {
        return this.vastMediaHeight;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getVastMediaWidth() {
        return this.vastMediaWidth;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return zzahr.zza(this, new String[0]);
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public boolean isLinear() {
        return this.linear;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public boolean isSkippable() {
        return this.skippable;
    }

    @Override // com.google.ads.interactivemedia.v3.api.Ad
    public boolean isUiDisabled() {
        return this.disableUi;
    }

    public void setAdId(String str) {
        this.adId = str;
    }

    public void setAdPodInfo(zzd zzdVar) {
        this.adPodInfo = zzdVar;
    }

    public void setAdSystem(String str) {
        this.adSystem = str;
    }

    public void setAdUi(com.google.ads.interactivemedia.v3.api.zza zzaVar) {
        this.adUi = zzaVar;
    }

    public void setAdWrapperCreativeIds(String[] strArr) {
        this.adWrapperCreativeIds = strArr;
    }

    public void setAdWrapperIds(String[] strArr) {
        this.adWrapperIds = strArr;
    }

    public void setAdWrapperSystems(String[] strArr) {
        this.adWrapperSystems = strArr;
    }

    public void setAdvertiserName(String str) {
        this.advertiserName = str;
    }

    public void setClickThruUrl(String str) {
        this.clickThroughUrl = str;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setCreativeAdId(String str) {
        this.creativeAdId = str;
    }

    public void setCreativeId(String str) {
        this.creativeId = str;
    }

    public void setDealId(String str) {
        this.dealId = str;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setDuration(double d6) {
        this.duration = d6;
    }

    public void setHeight(int i8) {
        this.height = i8;
    }

    public void setLinear(boolean z7) {
        this.linear = z7;
    }

    public void setSkipTimeOffset(double d6) {
        this.skipTimeOffset = d6;
    }

    public void setSkippable(boolean z7) {
        this.skippable = z7;
    }

    public void setSurveyUrl(String str) {
        this.surveyUrl = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTraffickingParameters(String str) {
        this.traffickingParameters = str;
    }

    public void setUiDisabled(boolean z7) {
        this.disableUi = z7;
    }

    public void setUiElements(Set<UiElement> set) {
        this.uiElements = set;
    }

    public void setUniversalAdIdRegistry(String str) {
        this.universalAdIdRegistry = str;
    }

    public void setUniversalAdIdValue(String str) {
        this.universalAdIdValue = str;
    }

    public void setUniversalAdIds(zzcm[] zzcmVarArr) {
        this.universalAdIds = zzcmVarArr;
    }

    public void setVastMediaBitrate(int i8) {
        this.vastMediaBitrate = i8;
    }

    public void setVastMediaHeight(int i8) {
        this.vastMediaHeight = i8;
    }

    public void setVastMediaWidth(int i8) {
        this.vastMediaWidth = i8;
    }

    public void setWidth(int i8) {
        this.width = i8;
    }

    public String toString() {
        String str = this.adId;
        String str2 = this.creativeId;
        String str3 = this.creativeAdId;
        String str4 = this.universalAdIdValue;
        String str5 = this.universalAdIdRegistry;
        String str6 = this.title;
        String str7 = this.description;
        String str8 = this.contentType;
        String string = Arrays.toString(this.adWrapperIds);
        String string2 = Arrays.toString(this.adWrapperSystems);
        String string3 = Arrays.toString(this.adWrapperCreativeIds);
        String str9 = this.adSystem;
        String str10 = this.advertiserName;
        String str11 = this.surveyUrl;
        String str12 = this.dealId;
        boolean z7 = this.linear;
        boolean z8 = this.skippable;
        int i8 = this.width;
        int i9 = this.height;
        int i10 = this.vastMediaHeight;
        int i11 = this.vastMediaWidth;
        int i12 = this.vastMediaBitrate;
        String str13 = this.traffickingParameters;
        String str14 = this.clickThroughUrl;
        double d6 = this.duration;
        String strValueOf = String.valueOf(this.adPodInfo);
        String strValueOf2 = String.valueOf(this.uiElements);
        boolean z9 = this.disableUi;
        double d8 = this.skipTimeOffset;
        StringBuilder sbQ = U2.q("Ad [adId=", str, ", creativeId=", str2, ", creativeAdId=");
        a.h(sbQ, str3, ", universalAdIdValue=", str4, ", universalAdIdRegistry=");
        a.h(sbQ, str5, ", title=", str6, ", description=");
        a.h(sbQ, str7, ", contentType=", str8, ", adWrapperIds=");
        a.h(sbQ, string, ", adWrapperSystems=", string2, ", adWrapperCreativeIds=");
        a.h(sbQ, string3, ", adSystem=", str9, ", advertiserName=");
        a.h(sbQ, str10, ", surveyUrl=", str11, ", dealId=");
        sbQ.append(str12);
        sbQ.append(", linear=");
        sbQ.append(z7);
        sbQ.append(", skippable=");
        sbQ.append(z8);
        sbQ.append(", width=");
        sbQ.append(i8);
        sbQ.append(", height=");
        O.J(sbQ, i9, ", vastMediaHeight=", i10, ", vastMediaWidth=");
        O.J(sbQ, i11, ", vastMediaBitrate=", i12, ", traffickingParameters=");
        a.h(sbQ, str13, ", clickThroughUrl=", str14, ", duration=");
        sbQ.append(d6);
        sbQ.append(", adPodInfo=");
        sbQ.append(strValueOf);
        sbQ.append(", uiElements=");
        sbQ.append(strValueOf2);
        sbQ.append(", disableUi=");
        sbQ.append(z9);
        sbQ.append(", skipTimeOffset=");
        sbQ.append(d8);
        sbQ.append("]");
        return sbQ.toString();
    }
}

package com.google.ads.interactivemedia.v3.api;

import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface AdsRenderingSettings {
    int getBitrateKbps();

    boolean getDisableUi();

    boolean getEnableCustomTabs();

    boolean getEnablePreloading();

    boolean getFocusSkipButtonWhenAvailable();

    List<String> getMimeTypes();

    void setBitrateKbps(int i8);

    void setDisableUi(boolean z7);

    void setEnableCustomTabs(boolean z7);

    void setEnablePreloading(boolean z7);

    void setFocusSkipButtonWhenAvailable(boolean z7);

    void setLoadVideoTimeout(int i8);

    void setMimeTypes(List<String> list);

    void setPlayAdsAfterTime(double d6);

    void setUiElements(Set<UiElement> set);
}

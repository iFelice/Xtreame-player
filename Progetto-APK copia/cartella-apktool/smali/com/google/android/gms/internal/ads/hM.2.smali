.class public final synthetic Lcom/google/android/gms/internal/ads/hM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/iM;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/iM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hM;->a:Lcom/google/android/gms/internal/ads/iM;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hM;->a:Lcom/google/android/gms/internal/ads/iM;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/iM;->a(Lcom/google/android/gms/internal/ads/iM;Landroid/media/AudioRouting;)V

    return-void
.end method

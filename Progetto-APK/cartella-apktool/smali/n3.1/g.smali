.class public final synthetic Ln3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cg;


# instance fields
.field public final synthetic G:Ln3/k;


# direct methods
.method public synthetic constructor <init>(Ln3/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln3/g;->G:Ln3/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/g;->G:Ln3/k;

    .line 2
    .line 3
    iget-object p1, p1, Ln3/k;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->P()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

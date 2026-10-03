.class public final Lcom/google/android/gms/internal/ads/yu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/tu;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/yu;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/yu;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v0, "sessions_without_flags"

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/yu;->a:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    const-string v0, "crashes_without_flags"

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/yu;->b:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 18
    .line 19
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 20
    .line 21
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/O7;->j:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "did_reset"

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

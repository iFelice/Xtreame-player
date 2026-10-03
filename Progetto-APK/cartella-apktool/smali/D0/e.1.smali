.class public final LD0/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/ContentResolver;

.field public final c:Landroid/net/Uri;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    iput p5, p0, LD0/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, LD0/e;->d:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, LD0/e;->b:Landroid/content/ContentResolver;

    .line 9
    .line 10
    iput-object p4, p0, LD0/e;->c:Landroid/net/Uri;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget p1, p0, LD0/e;->a:I

    .line 2
    .line 3
    iget-object v0, p0, LD0/e;->d:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/GL;

    .line 9
    .line 10
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v0, LD0/f;

    .line 25
    .line 26
    iget-object p1, v0, LD0/f;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v1, v0, LD0/f;->i:Lm0/d;

    .line 29
    .line 30
    iget-object v2, v0, LD0/f;->h:Lf/S;

    .line 31
    .line 32
    invoke-static {p1, v1, v2}, LD0/d;->c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, LD0/f;->a(LD0/d;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

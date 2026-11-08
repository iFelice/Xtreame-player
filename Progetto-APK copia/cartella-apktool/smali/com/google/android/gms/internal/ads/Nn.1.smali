.class public final synthetic Lcom/google/android/gms/internal/ads/Nn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/Nn;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nn;->I:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/internal/ads/Nn;->H:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Nn;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Nn;->G:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Nn;->H:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Nn;->J:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Nn;->I:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/MB;

    .line 13
    .line 14
    check-cast v2, LD4/b;

    .line 15
    .line 16
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/MB;->t(ILD4/b;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    move-object v3, v2

    .line 33
    check-cast v3, Lcom/google/android/gms/internal/ads/bo;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/google/android/gms/internal/ads/yo;

    .line 40
    .line 41
    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/yo;->d:Z

    .line 42
    .line 43
    if-nez v5, :cond_0

    .line 44
    .line 45
    const/4 v5, -0x1

    .line 46
    if-eq v1, v5, :cond_1

    .line 47
    .line 48
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/yo;->b:Lm0/q;

    .line 49
    .line 50
    invoke-virtual {v5, v1}, Lm0/q;->c(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    const/4 v5, 0x1

    .line 54
    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/yo;->c:Z

    .line 55
    .line 56
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/bo;->zza(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

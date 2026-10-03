.class public final synthetic Lcom/google/android/gms/internal/measurement/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/measurement/d0;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lg6/d;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    sget-object v0, Lr6/d;->a:Lp6/k;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_1
    sget-object v0, Lr6/c;->a:Lp6/g;

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_2
    sget-object v0, Lr6/b;->a:Lp6/f;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_3
    sget-object v0, Lr6/a;->a:Lp6/c;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_4
    sget-object v0, Lh6/a;->a:Lh6/b;

    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d0;->a()Lg6/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d0;->a()Lg6/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d0;->a()Lg6/d;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d0;->a()Lg6/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d0;->a()Lg6/d;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_5
    new-instance v0, Lcom/google/android/gms/internal/measurement/K2;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/K2;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.class public abstract Lcom/google/android/gms/common/internal/l;
.super Lcom/google/android/gms/common/internal/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e;


# static fields
.field private static volatile zaa:Ljava/util/concurrent/Executor;


# instance fields
.field private final zab:Lcom/google/android/gms/common/internal/i;

.field private final zac:Ljava/util/Set;

.field private final zad:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/i;LK3/e;LK3/l;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/m;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/V;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    sget-object v4, LJ3/e;->d:LJ3/e;

    .line 6
    .line 7
    invoke-static {p5}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p6}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v6, Lcom/google/android/gms/common/internal/A;

    .line 14
    .line 15
    invoke-direct {v6, p5}, Lcom/google/android/gms/common/internal/A;-><init>(LK3/e;)V

    .line 16
    .line 17
    .line 18
    new-instance v7, Lcom/google/android/gms/common/internal/B;

    .line 19
    .line 20
    invoke-direct {v7, p6}, Lcom/google/android/gms/common/internal/B;-><init>(LK3/l;)V

    .line 21
    .line 22
    .line 23
    iget-object v8, p4, Lcom/google/android/gms/common/internal/i;->g:Ljava/lang/String;

    .line 24
    .line 25
    move-object v0, p0

    .line 26
    move-object v1, p1

    .line 27
    move-object v2, p2

    .line 28
    move v5, p3

    .line 29
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/g;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/V;LJ3/f;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/internal/c;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Lcom/google/android/gms/common/internal/l;->zab:Lcom/google/android/gms/common/internal/i;

    .line 33
    .line 34
    iget-object p1, p4, Lcom/google/android/gms/common/internal/i;->a:Landroid/accounts/Account;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/common/internal/l;->zad:Landroid/accounts/Account;

    .line 37
    .line 38
    iget-object p1, p4, Lcom/google/android/gms/common/internal/i;->c:Ljava/util/Set;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/l;->validateScopes(Ljava/util/Set;)Ljava/util/Set;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    if-eqz p4, :cond_1

    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    check-cast p4, Lcom/google/android/gms/common/api/Scope;

    .line 59
    .line 60
    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    if-eqz p4, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/common/internal/l;->zac:Ljava/util/Set;

    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->zad:Landroid/accounts/Account;

    return-object v0
.end method

.method public getBindServiceExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getClientSettings()Lcom/google/android/gms/common/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->zab:Lcom/google/android/gms/common/internal/i;

    return-object v0
.end method

.method public getRequiredFeatures()[LJ3/d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [LJ3/d;

    .line 3
    .line 4
    return-object v0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->zac:Ljava/util/Set;

    return-object v0
.end method

.method public getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/g;->requiresSignIn()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/l;->zac:Ljava/util/Set;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method public validateScopes(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

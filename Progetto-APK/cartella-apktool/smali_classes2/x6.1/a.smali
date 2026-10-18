.class public abstract Lx6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx6/h;


# instance fields
.field public final G:Lx6/i;


# direct methods
.method public constructor <init>(Lx6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx6/a;->G:Lx6/i;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final E(Ljava/lang/Object;LC6/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, LC6/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final N(Lx6/j;)Lx6/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly4/k;->a0(Lx6/h;Lx6/j;)Lx6/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public O(Lx6/i;)Lx6/j;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly4/k;->Z(Lx6/h;Lx6/i;)Lx6/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lx6/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lx6/a;->G:Lx6/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lx6/i;)Lx6/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly4/k;->D(Lx6/h;Lx6/i;)Lx6/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

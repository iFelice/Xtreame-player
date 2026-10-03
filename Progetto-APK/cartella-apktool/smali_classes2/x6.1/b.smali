.class public abstract Lx6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx6/i;


# instance fields
.field public final G:LC6/l;

.field public final H:Lx6/i;


# direct methods
.method public constructor <init>(Lx6/i;LI6/f;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lx6/b;->G:LC6/l;

    .line 10
    .line 11
    instance-of p2, p1, Lx6/b;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Lx6/b;

    .line 16
    .line 17
    iget-object p1, p1, Lx6/b;->H:Lx6/i;

    .line 18
    .line 19
    :cond_0
    iput-object p1, p0, Lx6/b;->H:Lx6/i;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lx6/h;)Lx6/h;
    .locals 1

    .line 1
    const-string v0, "element"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx6/b;->G:LC6/l;

    .line 7
    .line 8
    invoke-interface {v0, p1}, LC6/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lx6/h;

    .line 13
    .line 14
    return-object p1
.end method

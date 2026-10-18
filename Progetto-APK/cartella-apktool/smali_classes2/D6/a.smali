.class public abstract LD6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG6/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient G:LG6/a;

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Class;

.field public final J:Ljava/lang/String;

.field public final K:Ljava/lang/String;

.field public final L:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD6/a;->H:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, LD6/a;->I:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, LD6/a;->J:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, LD6/a;->K:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, LD6/a;->L:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()LD6/b;
    .locals 2

    .line 1
    iget-object v0, p0, LD6/a;->I:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p0, LD6/a;->L:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget-object v1, LD6/l;->a:LD6/m;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, LD6/i;

    .line 17
    .line 18
    invoke-direct {v1, v0}, LD6/i;-><init>(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-static {v0}, LD6/l;->a(Ljava/lang/Class;)LD6/c;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    return-object v0
.end method

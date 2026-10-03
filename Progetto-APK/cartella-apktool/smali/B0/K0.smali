.class public final synthetic LB0/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/h;
.implements LM4/c;


# instance fields
.field public final synthetic G:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, LB0/K0;->G:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LB0/K0;->G:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lo1/i;

    .line 4
    .line 5
    check-cast p1, Lo1/p;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

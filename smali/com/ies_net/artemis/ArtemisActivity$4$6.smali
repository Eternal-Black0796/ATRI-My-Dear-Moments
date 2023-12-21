.class Lcom/ies_net/artemis/ArtemisActivity$4$6;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity$4;->applicationError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/ArtemisActivity$4;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4$6;->this$1:Lcom/ies_net/artemis/ArtemisActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$4$6;->this$1:Lcom/ies_net/artemis/ArtemisActivity$4;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

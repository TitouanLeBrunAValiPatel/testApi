//package com.projet.eCommerce.card;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import com.projet.eCommerce.controller.CardController;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.MockitoAnnotations;
//import org.springframework.http.MediaType;
//import org.springframework.test.web.servlet.MockMvc;
//import org.springframework.test.web.servlet.ResultActions;
//import org.springframework.test.web.servlet.setup.MockMvcBuilders;
//
//import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
//
//class CardIntegrationTest {
//
//    private MockMvc mockMvc;
//
//    private final TestSetupUtils testSetupUtils;
//
//
////    @InjectMocks
//    private final CardController cardController;
//
//    CardControllerTest(CardController cardController) {
//        this.cardController = cardController;
//    }
//
//    @BeforeEach
//    void setUp() {
//        MockitoAnnotations.openMocks(this);
//        mockMvc = MockMvcBuilders.standaloneSetup(cardController).build();
//    }
//
//    @Test
//    void testFindAllItems() throws Exception {
//        ResultActions resultActions = mockMvc.perform(get("/api/cards").contentType(MediaType.APPLICATION_JSON));
//        resultActions.andExpect(status().isOk());
//    }
//
//    @Test
//    void testFindItemById() throws Exception {
//        ResultActions resultActions = mockMvc.perform(get("/api/card/0").contentType(MediaType.APPLICATION_JSON));
//        resultActions.andExpect(status().isOk());
//    }
//
//    @Test
//    void testCreateItem() throws Exception {
//        String requestBody = "{\n" +
//                "  \"id\": 1,\n" +
//                "  \"card_name\": \"testName\",\n" +
//                "  \"card_number\": 342391,\n" +
//                "  \"card_expiration\": \"20/08\",\n" +
//                "  \"cryptogram\": 1256\n" +
//                "}\n";
//        ResultActions resultActions = mockMvc.perform(post("/api/card")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestBody));
//        resultActions.andExpect(status().isOk());
//    }
//
//    @Test
//    void testDeleteItemById() throws Exception {
//        ResultActions resultActions = mockMvc.perform(delete("/api/card/0").contentType(MediaType.APPLICATION_JSON));
//        resultActions.andExpect(status().isOk());
//    }
//
//    @Test
//    void testUpdateItem() throws Exception {
//        String requestBody = "{\n" +
//                "  \"id\": 1,\n" +
//                "  \"card_name\": \"testName\",\n" +
//                "  \"card_number\": 342391,\n" +
//                "  \"card_expiration\": \"20/08\",\n" +
//                "  \"cryptogram\": 1256\n" +
//                "}\n";
//        ResultActions resultActions = mockMvc.perform(put("/api/card")
//                .contentType(MediaType.APPLICATION_JSON)
//                .content(requestBody));
//        resultActions.andExpect(status().isOk());
//    }
//}
